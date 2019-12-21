// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_human_fragment.gql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
