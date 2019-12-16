// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';
import 'package:starwars/graphql/schema.dart';

part '_human_fragment.gql.g.dart';

///
mixin Home on Human {
  static final String typeName = "Human";

  @JsonKey(required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  set home(String home) => fields.homePlanet = home;
}

///
mixin Dimensions on Human {
  static final String typeName = "Human";

  @JsonKey(required: false, disallowNullValue: false)
  double get height => fields.height;
  set height(double height) => fields.height = height;
  @JsonKey(required: false, disallowNullValue: false)
  double get mass => fields.mass;
  set mass(double mass) => fields.mass = mass;
}

@JsonSerializable()
class RelationshipsStarships extends Starship with HelloMixin {
  static final String typeName = "Starship";

  @JsonKey(required: true, disallowNullValue: true)
  String get name => fields.name;
  set name(String name) => fields.name = name;
  @JsonKey(required: false, disallowNullValue: false)
  double get length => fields.length;
  set length(double length) => fields.length = length;
  RelationshipsStarships({
    String name,
    double length,
  }) : super(
          name: name,
          length: length,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  factory RelationshipsStarships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsStarshipsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RelationshipsStarshipsToJson(this)..['__typename'] = typeName;
}

@JsonSerializable()
class RelationshipsFriends extends Character with HelloMixin {
  static final String typeName = "Character";

  @JsonKey(required: true, disallowNullValue: true)
  String get name => fields.name;
  set name(String name) => fields.name = name;
  RelationshipsFriends({
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

  factory RelationshipsFriends.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFriendsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RelationshipsFriendsToJson(this)..['__typename'] = typeName;
}

///
mixin Relationships on Human {
  static final String typeName = "Human";

  @JsonKey(required: false, disallowNullValue: false)
  List<RelationshipsFriends> get friends => fields.friends;
  set friends(List<RelationshipsFriends> friends) => fields.friends = friends;
  @JsonKey(required: false, disallowNullValue: false)
  List<RelationshipsStarships> get starships => fields.starships;
  set starships(List<RelationshipsStarships> starships) =>
      fields.starships = starships;
}

///
mixin Info on Human implements Dimensions, Home {
  static final String typeName = "Human";

  @JsonKey(required: false, disallowNullValue: false)
  double get height => fields.height;
  set height(double height) => fields.height = height;
  @JsonKey(required: false, disallowNullValue: false)
  double get mass => fields.mass;
  set mass(double mass) => fields.mass = mass;
  @JsonKey(required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  set home(String home) => fields.homePlanet = home;
}
