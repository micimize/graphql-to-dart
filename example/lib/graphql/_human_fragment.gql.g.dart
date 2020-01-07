// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_human_fragment.gql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeSelectionSet _$HomeSelectionSetFromJson(Map<String, dynamic> json) {
  return HomeSelectionSet(
    home: json['home'] as String,
    planet: json['planet'] as String,
  );
}

Map<String, dynamic> _$HomeSelectionSetToJson(HomeSelectionSet instance) =>
    <String, dynamic>{
      'home': instance.home,
      'planet': instance.planet,
    };

DimensionsSelectionSet _$DimensionsSelectionSetFromJson(
    Map<String, dynamic> json) {
  return DimensionsSelectionSet(
    height: (json['height'] as num)?.toDouble(),
    mass: (json['mass'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DimensionsSelectionSetToJson(
        DimensionsSelectionSet instance) =>
    <String, dynamic>{
      'height': instance.height,
      'mass': instance.mass,
    };

RelationshipsStarships _$RelationshipsStarshipsFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name'], disallowNullValues: const ['name']);
  return RelationshipsStarships(
    name: json['name'] as String,
    length: (json['length'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$RelationshipsStarshipsToJson(
    RelationshipsStarships instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['length'] = instance.length;
  return val;
}

RelationshipsFriends _$RelationshipsFriendsFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name'], disallowNullValues: const ['name']);
  return RelationshipsFriends(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$RelationshipsFriendsToJson(
    RelationshipsFriends instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

RelationshipsSelectionSet _$RelationshipsSelectionSetFromJson(
    Map<String, dynamic> json) {
  return RelationshipsSelectionSet(
    friends: (json['friends'] as List)
        ?.map((e) => e == null
            ? null
            : RelationshipsFriends.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    starships: (json['starships'] as List)
        ?.map((e) => e == null
            ? null
            : RelationshipsStarships.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RelationshipsSelectionSetToJson(
        RelationshipsSelectionSet instance) =>
    <String, dynamic>{
      'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
      'starships': instance.starships?.map((e) => e?.toJson())?.toList(),
    };

InfoSelectionSet _$InfoSelectionSetFromJson(Map<String, dynamic> json) {
  return InfoSelectionSet(
    height: (json['height'] as num)?.toDouble(),
    mass: (json['mass'] as num)?.toDouble(),
    home: json['home'] as String,
    planet: json['planet'] as String,
  );
}

Map<String, dynamic> _$InfoSelectionSetToJson(InfoSelectionSet instance) =>
    <String, dynamic>{
      'height': instance.height,
      'mass': instance.mass,
      'home': instance.home,
      'planet': instance.planet,
    };
