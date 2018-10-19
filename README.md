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
    "imports": [
      // relative to out file
      "./scalars.dart"
    ],
    "parts": [
      // expected generated json_serializable part
      "./graphql.g.dart"
    ],
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
I've built in some static helper methods to the generated models to make the typed data easier to work with. currently there's `assign`, similar to `Object.assign` in javascript, `copy`, and an `empty` constructor, mainly for downcasting. 
```dart
/*  */
@JsonSerializable()
class TemporalId extends Base {
  String entityId;
  @JsonKey(fromJson: fromJsonToPGDateTime, toJson: fromPGDateTimeToJson)
  PGDateTime valid;

  TemporalId({
    this.entityId,
    this.valid,
  });

  TemporalId.empty();

  static I _assign<I extends TemporalId, S extends TemporalId>(
      I into, S source) {
    into.entityId = source.entityId;
    into.valid = source.valid;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends TemporalId, S extends TemporalId>(I into, S source,
      [List<S> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [TemporalId]
  static TemporalId copy<C extends TemporalId>(C source) {
    return TemporalId(
      entityId: source.entityId,
      valid: source.valid,
    );
  }

  factory TemporalId.fromJson(Map<String, dynamic> json) =>
      _$TemporalIdFromJson(json);
  Map<String, dynamic> toJson() => _$TemporalIdToJson(this);
}
I've built in some static helper methods to the generated models to make the typed data easier to work with. currently there's `assign`, similar to `Object.assign` in javascript, and `copy`. 
Here's some sample output:
```dart
```
