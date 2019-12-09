import '../graphql_types.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class ToJson {
  Map<String, dynamic> toJson();
}





/// 
mixin Home on Human extends [object Object]  {
  static final String typeName = "Human";

  
  
      @JsonKey(required: false, disallowNullValue: false)
    String get homePlanet => fields.homePlanet;
    set homePlanet (String homePlanet) => fields.homePlanet = homePlanet;
}


@JsonSerializable()
class HeroForEpisodeVariables {

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
class HeroForEpisodeHumanInlineFragment extends [object Object]  {
  static final String typeName = "Human";

  String __typename;


  
  
      @JsonKey(required: false, disallowNullValue: false)
    double get height => fields.height;
    set height (double height) => fields.height = height;


  ({
    
        double height,
    
        String homePlanet,
    
  }): super(
    height: height,
    homePlanet: homePlanet,
  )

  factory HeroForEpisodeHumanInlineFragment.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeHumanInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeHumanInlineFragmentToJson(instance);

}



@JsonSerializable()
class HeroForEpisodeDroidInlineFragment extends [object Object]  {
  static final String typeName = "Droid";

  String __typename;


  
  
      @JsonKey(required: false, disallowNullValue: false)
    String get primaryFunction => fields.primaryFunction;
    set primaryFunction (String primaryFunction) => fields.primaryFunction = primaryFunction;


  ({
    
        String primaryFunction,
    
  }): super(
    primaryFunction: primaryFunction,
  )

  factory HeroForEpisodeDroidInlineFragment.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeDroidInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeDroidInlineFragmentToJson(instance);

}



@JsonSerializable()
class HeroForEpisodeHero extends [object Object]  {
  static final String typeName = "Character";

  String __typename;


  
  
      @JsonKey(required: true, disallowNullValue: true)
    @JsonKey(required: true, disallowNullValue: true,)
      String get name => fields.name;
    set name (@JsonKey(required: true, disallowNullValue: true,)
      String name) => fields.name = name;
    @JsonKey(ignore: true)
    HeroForEpisodeDroidInlineFragment droidInlineFragment;
    @JsonKey(ignore: true)
    HeroForEpisodeHumanInlineFragment humanInlineFragment;


  ({
    
        @JsonKey(required: true, disallowNullValue: true,)
    String name,
    
  }): super(
    name: name,
  )

  factory HeroForEpisodeHero.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeHeroFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeHeroToJson(instance);

}



@JsonSerializable()
class HeroForEpisodeQuery extends [object Object]  {
  static final String typeName = "query";

  String __typename;


  
  
      @JsonKey(required: false, disallowNullValue: false)
    HeroForEpisodeHero get hero => fields.hero;
    set hero (HeroForEpisodeHero hero) => fields.hero = hero;


  HeroForEpisode({
    
        HeroForEpisodeHero hero,
    
  }): super(
    hero: hero,
  )

  factory HeroForEpisodeQuery.fromJson(Map<String, dynamic> json) => 
    _$HeroForEpisodeQueryFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeQueryToJson(instance);

}


