import '../graphql_types.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class ToJson {
  Map<String, dynamic> toJson();
}





/// 
mixin Home on Human {
  static final String typeName = "Human";

  
  
      @JsonKey(required: false, disallowNullValue: false)
    String get homePlanet => fields.homePlanet;
    set homePlanet (String homePlanet) => fields.homePlanet = homePlanet;
}


@JsonSerializable()
class HeroForEpisodeVariables  {

  String __typename;

  
    @JsonKey(required: true, disallowNullValue: true,)
    Episode ep;


  HeroForEpisodeVariables({
    @required this.ep,
    
  });

  factory HeroForEpisodeVariables.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeVariablesFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeVariablesToJson(instance);

}


@JsonSerializable()
class HeroForEpisodeHumanInlineFragment with Home  {
  static final String typeName = "Human";

  String __typename;

  
    double height;
    String homePlanet;


  HeroForEpisodeHumanInlineFragment({
    this.height,
    this.homePlanet,
    
  });

  factory HeroForEpisodeHumanInlineFragment.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeHumanInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeHumanInlineFragmentToJson(instance);

}


@JsonSerializable()
class HeroForEpisodeDroidInlineFragment  {
  static final String typeName = "Droid";

  String __typename;

  
    String primaryFunction;


  HeroForEpisodeDroidInlineFragment({
    this.primaryFunction,
    
  });

  factory HeroForEpisodeDroidInlineFragment.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeDroidInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeDroidInlineFragmentToJson(instance);

}


@JsonSerializable()
class HeroForEpisodeHero  {
  static final String typeName = "Character";

  String __typename;

  
    @JsonKey(required: true, disallowNullValue: true,)
    String name;

    @JsonKey(ignore: true)
    HeroForEpisodeDroidInlineFragment droidInlineFragment;
    @JsonKey(ignore: true)
    HeroForEpisodeHumanInlineFragment humanInlineFragment;

  HeroForEpisodeHero({
    @required this.name,
    
  });

  factory HeroForEpisodeHero.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeHeroFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeHeroToJson(instance);

}



@JsonSerializable()
class HeroForEpisodeQuery  {
  static final String typeName = "HeroForEpisodeQuery";

  String __typename;

  
    HeroForEpisodeHero hero;


  HeroForEpisodeQuery({
    this.hero,
    
  });

  factory HeroForEpisodeQuery.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeQueryFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeQueryToJson(instance);

}



