# graphql-to-dart
[Custom templates](https://github.com/dotansimha/graphql-code-generator/blob/master/packages/graphql-codegen-generators/CUSTOM_TEMPLATES.md) for [graphql-code-generator](https://github.com/dotansimha/graphql-code-generator) for generating dart PODOs and json_serializable classes

## Current severe restrictions:
* inline fragments don't work
* no faculties for dealing with underscore-prefixed `_fields` in the schema
* requires `build.yaml`, peer dependencies, etc

The example is sparse.

### Current nusances:
* You can have multiple inline fragments on the same document, but they will be named with leading underscores, like `Query_TypeInlineFragment`, which is ugly
* The dart type system is hard to wrestle into graphql-like types (especially unions)
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
      - entityId - validFrom
      - validUntil
    name: Entity
  imports:
  - package:quiver/core.dart
  - "./scalars.dart"
  # the generated .g.dart must be included as a part
  parts:
  - "./base.dart"
  - "./graphql.g.dart"
  # required annotations on base type fields can be disabled for dynamic queries
  requiredFields: false
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
I've built in some idiomatic dart helper methods to the generated models to make the typed data easier to work with. Currently there's `addAll` (modeled after `Map.addAll`), `copy`, `copyWith`, and an `empty` constructor. You can also set `generateFragmentHelpers` to generate `addAllFrom{baseType|inputType}` helpers.

Here's some sample output for a fragment on a base type "TemporalId":
```dart
@JsonSerializable()
class VersionId implements ToJson {
  static final String typeName = "TemporalId";

  String __typename;

  String entityId;
  @JsonKey(
    fromJson: fromJsonToPGDateTime,
    toJson: fromPGDateTimeToJson,
  )
  PGDateTime valid;

  VersionId({
    this.entityId,
    this.valid,
  });

  /// Construct an empty `VersionId`
  VersionId.empty();

  /// Adds all fields from [other] to this `VersionId`.
  ///
  /// If a field from [other] is already in this `VersionId`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant VersionId other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      entityId = other.entityId ?? entityId;
      valid = other.valid ?? valid;
    } else {
      entityId ??= other.entityId;
      valid ??= other.valid;
    }
  }

  /// Creates a copy of this `VersionId` but with the given fields replaced with the new values.
  VersionId copyWith({
    String entityId,
    PGDateTime valid,
  }) {
    return VersionId(
      entityId: entityId ?? this.entityId,
      valid: valid ?? this.valid,
    );
  }

  /// Creates a copy of this `VersionId`
  VersionId copy() => copyWith();

  /// Adds all fields from [other] to this `VersionId`.
  ///
  /// If a field from [other] is already in this `VersionId`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAllFromTemporalId(
    covariant TemporalId other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      entityId = other.entityId ?? entityId;
      valid = other.valid ?? valid;
    } else {
      entityId ??= other.entityId;
      valid ??= other.valid;
    }
  }

  factory VersionId.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static VersionId deserializeFromJson(
      Map<String, dynamic> json) {
    VersionId instance =
        _$VersionIdFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      VersionId instance) {
    Map<String, dynamic> json =
        _$VersionIdToJson(instance);

    json['__typename'] = instance.__typename ?? typeName;
    return json;
  }
}
```

# NOTES
The helpers can't handle nested fragments atm, due to lack of awareness that the field is a fragment


## dev notes
`generateFragmentHelpers` is super fickle, and by-and-large we're doing all kinds of hacks to get helpers to work 
(caching the fragment info at declaration time, then plucking it back out later)
also helpers often have different usages and the code is basically impossible even for me to follow.
But it works!
