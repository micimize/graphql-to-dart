// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:starwars/graphql/schema.dart';
import 'package:starwars/graphql/_human_fragment.gql.dart';

export 'package:starwars/graphql/_human_fragment.gql.dart';

part 'hero_for_episode.gql.g.dart';

@JsonSerializable()
class HeroForEpisodeVariables {
  @JsonKey(required: true, disallowNullValue: true)
  Episode ep;

  HeroForEpisodeVariables({
    @required this.ep,
  });

  factory HeroForEpisodeVariables.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeVariablesFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeVariablesToJson(this);
}

@JsonSerializable()
class HeroForEpisodeHumanInlineFragment extends Human with Info, Relationships {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [reference]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'appearsIn', required: true, disallowNullValue: true)
  List<Episode> get appearsIn => fields.appearsIn;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  @override
  List<Object> get props => [
        ...super.props,
        planet,
      ];

  HeroForEpisodeHumanInlineFragment({
    this.typename,
    @required List<Episode> appearsIn,
    double height,
    double mass,
    String home,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
    this.planet,
  }) : super(
          appearsIn: appearsIn,
          height: height,
          mass: mass,
          homePlanet: home,
          friends: friends,
          starships: starships,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  /// Creates a new `HeroForEpisodeHumanInlineFragment` with the given non-null values overridden
  HeroForEpisodeHumanInlineFragment copyWith({
    String typename,
    List<Episode> appearsIn,
    double height,
    double mass,
    String home,
    String planet,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) =>
      HeroForEpisodeHumanInlineFragment(
        typename: typename ?? this.typename,
        appearsIn: appearsIn ?? this.appearsIn,
        height: height ?? this.height,
        mass: mass ?? this.mass,
        home: home ?? this.home,
        planet: planet ?? this.planet,
        friends: friends ?? this.friends,
        starships: starships ?? this.starships,
      );

  /// Creates a new `HeroForEpisodeHumanInlineFragment` with non-null values from [other] as attribute overrides
  HeroForEpisodeHumanInlineFragment mergeLeftWith(
      covariant HeroForEpisodeHumanInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      appearsIn: other.appearsIn,
      height: other.height,
      mass: other.mass,
      home: other.home,
      planet: other.planet,
      friends: other.friends,
      starships: other.starships,
    );
  }

  /// Creates a new `HeroForEpisodeHumanInlineFragment` with non-null values from [other] as attribute defaults
  HeroForEpisodeHumanInlineFragment mergedRightWith(
      covariant HeroForEpisodeHumanInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory HeroForEpisodeHumanInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      _$HeroForEpisodeHumanInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeHumanInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeDroidInlineFragment extends Droid {
  static final String schemaTypeName = "Droid";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [reference]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'primaryFunction', required: false, disallowNullValue: false)
  String get primaryFunction => fields.primaryFunction;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  HeroForEpisodeDroidInlineFragment({
    this.typename,
    String primaryFunction,
  }) : super(
          primaryFunction: primaryFunction,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `HeroForEpisodeDroidInlineFragment` with the given non-null values overridden
  HeroForEpisodeDroidInlineFragment copyWith({
    String typename,
    String primaryFunction,
  }) =>
      HeroForEpisodeDroidInlineFragment(
        typename: typename ?? this.typename,
        primaryFunction: primaryFunction ?? this.primaryFunction,
      );

  /// Creates a new `HeroForEpisodeDroidInlineFragment` with non-null values from [other] as attribute overrides
  HeroForEpisodeDroidInlineFragment mergeLeftWith(
      covariant HeroForEpisodeDroidInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      primaryFunction: other.primaryFunction,
    );
  }

  /// Creates a new `HeroForEpisodeDroidInlineFragment` with non-null values from [other] as attribute defaults
  HeroForEpisodeDroidInlineFragment mergedRightWith(
      covariant HeroForEpisodeDroidInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory HeroForEpisodeDroidInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      _$HeroForEpisodeDroidInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeDroidInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeHero extends Character with HelloMixin {
  static final String schemaTypeName = "Character";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [reference]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;

  @JsonKey(ignore: true)
  final HeroForEpisodeDroidInlineFragment onDroid;
  @JsonKey(ignore: true)
  final HeroForEpisodeHumanInlineFragment onHuman;

  @override
  List<Object> get props => [
        ...super.props,
        onDroid,
        onHuman,
      ];

  HeroForEpisodeHero({
    this.typename,
    this.onDroid,
    this.onHuman,
    @required String name,
  }) : super(
          name: name,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Creates a new `HeroForEpisodeHero` with the given non-null values overridden
  HeroForEpisodeHero copyWith({
    String typename,
    HeroForEpisodeDroidInlineFragment onDroid,
    HeroForEpisodeHumanInlineFragment onHuman,
    String name,
  }) =>
      HeroForEpisodeHero(
        typename: typename ?? this.typename,
        onDroid: onDroid != null
            ? this.onDroid?.mergedLeftWith(onDroid) ?? onDroid
            : this.onDroid,
        onHuman: onHuman != null
            ? this.onHuman?.mergedLeftWith(onHuman) ?? onHuman
            : this.onHuman,
        name: name ?? this.name,
      );

  /// Creates a new `HeroForEpisodeHero` with non-null values from [other] as attribute overrides
  HeroForEpisodeHero mergeLeftWith(covariant HeroForEpisodeHero other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      onDroid: onDroid,
      onHuman: onHuman,
      name: other.name,
    );
  }

  /// Creates a new `HeroForEpisodeHero` with non-null values from [other] as attribute defaults
  HeroForEpisodeHero mergedRightWith(covariant HeroForEpisodeHero other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory HeroForEpisodeHero.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeHeroFromJson(json).copyWith(
        onDroid: HeroForEpisodeDroidInlineFragment.schemaTypeName ==
                json['__typename']
            ? HeroForEpisodeDroidInlineFragment.fromJson(json)
            : null,
        onHuman: HeroForEpisodeHumanInlineFragment.schemaTypeName ==
                json['__typename']
            ? HeroForEpisodeHumanInlineFragment.fromJson(json)
            : null,
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeHeroToJson(this);

    if (onDroid != null) {
      json.addAll(onDroid.toJson());
    }
    if (onHuman != null) {
      json.addAll(onHuman.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeQuery extends Query {
  static final String schemaTypeName = "query";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [reference]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'hero', required: false, disallowNullValue: false)
  HeroForEpisodeHero get hero => fields.hero;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  HeroForEpisodeQuery({
    this.typename,
    HeroForEpisodeHero hero,
  }) : super(
          hero: hero,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `HeroForEpisodeQuery` with the given non-null values overridden
  HeroForEpisodeQuery copyWith({
    String typename,
    HeroForEpisodeHero hero,
  }) =>
      HeroForEpisodeQuery(
        typename: typename ?? this.typename,
        hero: hero ?? this.hero,
      );

  /// Creates a new `HeroForEpisodeQuery` with non-null values from [other] as attribute overrides
  HeroForEpisodeQuery mergeLeftWith(covariant HeroForEpisodeQuery other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      hero: other.hero,
    );
  }

  /// Creates a new `HeroForEpisodeQuery` with non-null values from [other] as attribute defaults
  HeroForEpisodeQuery mergedRightWith(covariant HeroForEpisodeQuery other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory HeroForEpisodeQuery.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeQueryFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeQueryToJson(this);

    return json;
  }
}
