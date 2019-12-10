import './schema.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hero_for_episode.g.dart';

abstract class ToJson {
  Map<String, dynamic> toJson();
}

///
mixin Home on Human {
  static final String typeName = "Human";

  @JsonKey(required: false, disallowNullValue: false)
  String get homePlanet => fields.homePlanet;
  set homePlanet(String homePlanet) => fields.homePlanet = homePlanet;
}

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
class HeroForEpisodeHumanInlineFragment extends Human with Home {
  static final String typeName = "Human";

  @JsonKey(required: false, disallowNullValue: false)
  double get height => fields.height;
  set height(double height) => fields.height = height;
  HeroForEpisodeHumanInlineFragment({
    double height,
    String homePlanet,
  }) : super(
          height: height,
          homePlanet: homePlanet,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
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

  @JsonKey(required: false, disallowNullValue: false)
  String get primaryFunction => fields.primaryFunction;
  set primaryFunction(String primaryFunction) =>
      fields.primaryFunction = primaryFunction;
  HeroForEpisodeDroidInlineFragment({
    String primaryFunction,
  }) : super(
          primaryFunction: primaryFunction,
        );

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
class HeroForEpisodeHero extends Character {
  static final String typeName = "Character";

  @JsonKey(required: true, disallowNullValue: true)
  String get name => fields.name;
  set name(String name) => fields.name = name;
  HeroForEpisodeHero({
    String name,
  }) : super(
          name: name,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.name == null) {
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

  @JsonKey(required: false, disallowNullValue: false)
  HeroForEpisodeHero get hero => fields.hero;
  set hero(HeroForEpisodeHero hero) => fields.hero = hero;
  HeroForEpisodeQuery({
    HeroForEpisodeHero hero,
  }) : super(
          hero: hero,
        );

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
