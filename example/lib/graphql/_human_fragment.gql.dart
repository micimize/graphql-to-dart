import './schema.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';

part '_human_fragment.g.dart';

/// 
mixin Home with Human  {
  static final String typeName = "Human";

  
      @JsonKey(required: false, disallowNullValue: false)
    String get home => fields.homePlanet;
    set home (String home) => fields.homePlanet = home;
}/// 
mixin Dimensions with Human  {
  static final String typeName = "Human";

  
      @JsonKey(required: false, disallowNullValue: false)
    double get height => fields.height;
    set height (double height) => fields.height = height;
      @JsonKey(required: false, disallowNullValue: false)
    double get mass => fields.mass;
    set mass (double mass) => fields.mass = mass;
}/// 
mixin RelationshipsStarships with Starship , HelloMixin  {
  static final String typeName = "Starship";

  
      @JsonKey(required: true, disallowNullValue: true)
    String get name => fields.name;
    set name (String name) => fields.name = name;
      @JsonKey(required: false, disallowNullValue: false)
    double get length => fields.length;
    set length (double length) => fields.length = length;
}
/// 
mixin RelationshipsFriends with Character , HelloMixin  {
  static final String typeName = "Character";

  
      @JsonKey(required: true, disallowNullValue: true)
    String get name => fields.name;
    set name (String name) => fields.name = name;
}
/// 
mixin Relationships with Human  {
  static final String typeName = "Human";

  
      @JsonKey(required: false, disallowNullValue: false)
    List<RelationshipsFriends> get friends => fields.friends;
    set friends (List<RelationshipsFriends> friends) => fields.friends = friends;
      @JsonKey(required: false, disallowNullValue: false)
    List<RelationshipsStarships> get starships => fields.starships;
    set starships (List<RelationshipsStarships> starships) => fields.starships = starships;
}/// 
mixin Info with Human implements Dimensions, Home  {
  static final String typeName = "Human";

  
      @JsonKey(required: false, disallowNullValue: false)
    double get height => fields.height;
    set height (double height) => fields.height = height;
      @JsonKey(required: false, disallowNullValue: false)
    double get mass => fields.mass;
    set mass (double mass) => fields.mass = mass;
      @JsonKey(required: false, disallowNullValue: false)
    String get home => fields.homePlanet;
    set home (String home) => fields.homePlanet = home;
}

