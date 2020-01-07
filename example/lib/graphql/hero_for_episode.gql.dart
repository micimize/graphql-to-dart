// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';
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
  static final String typeName = "Human";

  @JsonKey(name: r'appearsIn', required: true, disallowNullValue: true)
  List<Episode> get appearsIn => fields.appearsIn;
  set appearsIn(List<Episode> appearsIn) => fields.appearsIn = appearsIn;
  HeroForEpisodeHumanInlineFragment({
    @required List<Episode> appearsIn,
    double height,
    double mass,
    String home,
    String planet,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) : super(
          appearsIn: appearsIn,
          height: height,
          mass: mass,
          homePlanet: home,
          friends: friends,
          starships: starships,
        ) {
    this.planet = planet;
  }

  HeroForEpisodeHumanInlineFragment.empty();

  /// Creates a copy of this `HeroForEpisodeHumanInlineFragment`
  HeroForEpisodeHumanInlineFragment copy() =>
      HeroForEpisodeHumanInlineFragment.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeHumanInlineFragment`
  HeroForEpisodeHumanInlineFragment.from(Human other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  factory HeroForEpisodeHumanInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      _$HeroForEpisodeHumanInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HeroForEpisodeHumanInlineFragmentToJson(this)
        ..['__typename'] = typeName;
}

@JsonSerializable()
class HeroForEpisodeDroidInlineFragment extends Droid {
  static final String typeName = "Droid";

  @JsonKey(name: r'primaryFunction', required: false, disallowNullValue: false)
  String get primaryFunction => fields.primaryFunction;
  set primaryFunction(String primaryFunction) =>
      fields.primaryFunction = primaryFunction;
  HeroForEpisodeDroidInlineFragment({
    String primaryFunction,
  }) : super(
          primaryFunction: primaryFunction,
        );

  HeroForEpisodeDroidInlineFragment.empty();

  /// Creates a copy of this `HeroForEpisodeDroidInlineFragment`
  HeroForEpisodeDroidInlineFragment copy() =>
      HeroForEpisodeDroidInlineFragment.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeDroidInlineFragment`
  HeroForEpisodeDroidInlineFragment.from(Droid other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  factory HeroForEpisodeDroidInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      _$HeroForEpisodeDroidInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HeroForEpisodeDroidInlineFragmentToJson(this)
        ..['__typename'] = typeName;
}

@JsonSerializable()
class HeroForEpisodeHero extends Character with HelloMixin {
  static final String typeName = "Character";

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;
  set name(String name) => fields.name = name;
  HeroForEpisodeHero({
    @required String name,
  }) : super(
          name: name,
        );

  HeroForEpisodeHero.empty();

  /// Creates a copy of this `HeroForEpisodeHero`
  HeroForEpisodeHero copy() => HeroForEpisodeHero.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeHero`
  HeroForEpisodeHero.from(Character other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  factory HeroForEpisodeHero.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeHeroFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HeroForEpisodeHeroToJson(this)..['__typename'] = typeName;
}

@JsonSerializable()
class HeroForEpisodeQuery extends Query {
  static final String typeName = "query";

  @JsonKey(name: r'hero', required: false, disallowNullValue: false)
  HeroForEpisodeHero get hero => fields.hero;
  set hero(HeroForEpisodeHero hero) => fields.hero = hero;
  HeroForEpisodeQuery({
    HeroForEpisodeHero hero,
  }) : super(
          hero: hero,
        );

  HeroForEpisodeQuery.empty();

  /// Creates a copy of this `HeroForEpisodeQuery`
  HeroForEpisodeQuery copy() => HeroForEpisodeQuery.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeQuery`
  HeroForEpisodeQuery.from(Query other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  factory HeroForEpisodeQuery.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeQueryFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HeroForEpisodeQueryToJson(this)..['__typename'] = typeName;
}
