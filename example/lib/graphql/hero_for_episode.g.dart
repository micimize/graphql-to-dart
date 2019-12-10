// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_for_episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeroForEpisodeVariables _$HeroForEpisodeVariablesFromJson(
    Map<String, dynamic> json) {
  return HeroForEpisodeVariables();
}

Map<String, dynamic> _$HeroForEpisodeVariablesToJson(
        HeroForEpisodeVariables instance) =>
    <String, dynamic>{};

HeroForEpisodeHumanInlineFragment _$HeroForEpisodeHumanInlineFragmentFromJson(
    Map<String, dynamic> json) {
  return HeroForEpisodeHumanInlineFragment(
    height: (json['height'] as num)?.toDouble(),
    homePlanet: json['homePlanet'] as String,
  );
}

Map<String, dynamic> _$HeroForEpisodeHumanInlineFragmentToJson(
        HeroForEpisodeHumanInlineFragment instance) =>
    <String, dynamic>{
      'homePlanet': instance.homePlanet,
      'height': instance.height,
    };

HeroForEpisodeDroidInlineFragment _$HeroForEpisodeDroidInlineFragmentFromJson(
    Map<String, dynamic> json) {
  return HeroForEpisodeDroidInlineFragment(
    primaryFunction: json['primaryFunction'] as String,
  );
}

Map<String, dynamic> _$HeroForEpisodeDroidInlineFragmentToJson(
        HeroForEpisodeDroidInlineFragment instance) =>
    <String, dynamic>{
      'primaryFunction': instance.primaryFunction,
    };

HeroForEpisodeHero _$HeroForEpisodeHeroFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name'], disallowNullValues: const ['name']);
  return HeroForEpisodeHero(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$HeroForEpisodeHeroToJson(HeroForEpisodeHero instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

HeroForEpisodeQuery _$HeroForEpisodeQueryFromJson(Map<String, dynamic> json) {
  return HeroForEpisodeQuery(
    hero: json['hero'] == null
        ? null
        : HeroForEpisodeHero.fromJson(json['hero'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HeroForEpisodeQueryToJson(
        HeroForEpisodeQuery instance) =>
    <String, dynamic>{
      'hero': instance.hero?.toJson(),
    };
