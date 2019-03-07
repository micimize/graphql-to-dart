# graphql-to-dart
[Custom templates](https://github.com/dotansimha/graphql-code-generator/blob/master/packages/graphql-codegen-generators/CUSTOM_TEMPLATES.md) for [graphql-code-generator](https://github.com/dotansimha/graphql-code-generator) for generating dart PODOs and json_serializable classes

## usage
```bash
yarn add -D graphql-code-generator graphql graphql-to-dart@0.1.0-alpha1
```
write `codegen.yaml` to customize your build as needed:
```yaml
schema: "./schema.json"
documents: 
- "./lib/gql/raw/queries.gql"
overwrite: true
generates:
  lib/serializers/graphql.dart:
    plugins:
      - graphql-to-dart
config:
  generateFragmentHelpers:
    excludeFields:
    - suffix: Through
    - onType: EventMetric
  mixins:
  - when:
      fields:
      - entityId
      - validFrom
      - validUntil
    name: Entity
  imports:
  - package:quiver/core.dart
  - "./scalars.dart"
  parts:
  - "./base.dart"
  - "./graphql.g.dart"
  scalars:
    Date: DateTime
    Datetime: PGDateTime
    FiniteDatetime: DateTime
    UUID: String
    Rrule: RecurrenceRule
    Cursor: String
    MetricSpecification: Object
    MetricValue: Object
  replaceTypes:
    TemporalIdInput: TemporalId
    TemporalId: TemporalId
  irreducibleTypes:
  - TemporalId
```
Then generate with `yarn gql-gen` (or `gql-gen` if you have it globally installed)
And theeeen generate the actual json serializers (`json_serializable` is a peer dependency, but on the flutter side):
```bash
flutter packages pub run build_runner build
```

...Obviously this is not the most user friendly process yet.

# Sample result output
I've built in some static helper methods to the generated models to make the typed data easier to work with. Currently there's `assign`, similar to `Object.assign` in javascript, `copy`, and an `empty` constructor, mainly for downcasting. 

Here's some sample output:
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
```

### TODOS
* document fragment.assignTo{{type|input}}
