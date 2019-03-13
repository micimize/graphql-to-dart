# graphql-to-dart
[Custom templates](https://github.com/dotansimha/graphql-code-generator/blob/master/packages/graphql-codegen-generators/CUSTOM_TEMPLATES.md) for [graphql-code-generator](https://github.com/dotansimha/graphql-code-generator) for generating dart PODOs and json_serializable classes

If you're 

## Current severe restrictions:
* inline fragments don't work
* no faculties for dealing with underscore-prefixed `_fields` in the schema
* requires `build.yaml`, peer dependencies, etc

The example is broken.

### Current nusances:
* You can have multiple inline fragments on the same document, but they will be named with leading underscores, like `Query_TypeInlineFragment`, which is ugly
* The dart type system is hard to wrestle into graphql-like types
* I am not happy with the generated helper utilities. We should generate things like `.with` and `.as{{fragment}}()` 
* along those lines we should make use of covariants to get instance methods instead of class methods
* because of helpers like `.empty()`, having invalid types is easy. We should validate not null somehow


## usage
```bash
yarn add -D graphql-code-generator graphql graphql-to-dart@0.1.2-alpha
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
  # generate fragment helpers for
  # moving data/attributes between types and their cooresponding fragments,
  # except on types ending with `Through` and for the `EventMetric` type
  generateFragmentHelpers:
    excludeFields:
    - suffix: Through
    - onType: EventMetric
  mixins:
  # add the mixin {{name}} when the given fields are found in a model
  - when:
      fields:
      - entityId
      - validFrom
      - validUntil
    name: Entity
  imports:
  - package:quiver/core.dart
  - "./scalars.dart"
  # the generated .g.dart must be included as a part
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
Then generate with `yarn gql-gen` (or `gql-gen` if you have it globally installed),
And theeeen generate the actual json serializers (`json_serializable` is a peer dependency, but on the flutter side).
So:
```bash
yarn gql-gen
flutter packages pub run build_runner build
flutter format $outfile # you're gunna want this
```

*Make sure you have a `build.yaml` like in the `example`, and the deps in the `pubspec.yaml`*:
```yaml
# ...
dev_dependencies:
  build_runner: ^0.9.0
  json_serializable: ^0.5.4
  # ...

dependencies:
  json_annotation: ^0.2.3
  # ...
# ...
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
