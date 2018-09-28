# graphql-to-dart
[Custom templates](https://github.com/dotansimha/graphql-code-generator/blob/master/packages/graphql-codegen-generators/CUSTOM_TEMPLATES.md) for [graphql-code-generator](https://github.com/dotansimha/graphql-code-generator) for generating dart PODOs and json_serializable classes

## usage
```bash
yarn add -D graphql-code-generator graphql graphql-to-dart@0.0.1-alpha8
```
write `gql-gen.json` to customize your build as needed:
```javascript
{
  "generatorConfig": {
    // relative to out file
    "customScalars": "./scalars.dart",
    // must be duplicated, for now
    "outFile": "./graphql.dart",
    // alias schema scalars to dart classes,
    // decorate references with @JsonKey(fromJson: fromJsonToScalar, toJson: fromScalarToJson)
    // provided from scalars file
    "scalars": {
      "Date": "DateTime",
      "Datetime": "PGDateTime",
      "FiniteDatetime": "DateTime",
      "UUID": "String",
      "Rrule": "String",
      "Cursor": "String",
      "MetricSpecification": "Object",
      "MetricValue": "Object"
    },
    // don't emit classes for these types, 
    // alias their references
    "replaceTypes": {
      "TemporalIdInput": "TemporalId"
    }
  }
}
```
Then generate the models:
```bash
gql-gen                                                \
  --template graphql-to-dart                           \
  --schema ./schema/__generated__/schema.json          \
  # required even if specified in gql-gen.json
  --out lib/serializers/graphql.dart                   \
  # we can't extract graphql strings yet
  ./lib/gql/raw/GetSchedule.gql                        \
  ./lib/gql/raw/CreateEventRecord.gql                  \
  # more options defined in gql-gen.json
```
And theeeen generate the actual json serializers (`json_serializable` is a peer dependency, but on the flutter side):
```bash
flutter packages pub run build_runner build
```

Obviously this is not the most user friendly process yet.

# Sample result output
I've built in some helper methods to the generated models to make the resulting instances easier to work with, currently called `copy` and `copyInto`. Each serializer extends from a base `${typename}Data` class to avoid inheritence problems with fragments, etc:

```dart
// manage inheritence with a "Data" layer to avoid typing issues
class TemporalIdData {
  String entityId;
  @JsonKey(fromJson: fromJsonToPGDateTime, toJson: fromPGDateTimeToJson)
  PGDateTime valid;

  static C copyInto<C extends TemporalIdData>(C source, C into) {
    into.entityId = source.entityId;
    into.valid = source.valid;
    return into;
  }
}

@JsonSerializable()
class TemporalId extends TemporalIdData {
  // we still need to copy all the fields though :-/

  String entityId;
  @JsonKey(fromJson: fromJsonToPGDateTime, toJson: fromPGDateTimeToJson)
  PGDateTime valid;

  TemporalId({
    this.entityId,
    this.valid,
  });

  C copyInto<C extends TemporalIdData>(C into) {
    into.entityId = this.entityId;
    into.valid = this.valid;
    return into;
  }

  TemporalId copy() {
    return TemporalId(
      entityId: this.entityId,
      valid: this.valid,
    );
  }

  factory TemporalId.fromJson(Map<String, dynamic> json) =>
      _$TemporalIdFromJson(json);
  Map<String, dynamic> toJson() => _$TemporalIdToJson(this);
}
```
