// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewInput _$ReviewInputFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['stars'], disallowNullValues: const ['stars']);
  return ReviewInput(
    stars: json['stars'] as int,
    commentary: json['commentary'] as String,
    favoriteColor: json['favoriteColor'] == null
        ? null
        : ColorInput.fromJson(json['favoriteColor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReviewInputToJson(ReviewInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stars', instance.stars);
  val['commentary'] = instance.commentary;
  val['favoriteColor'] = instance.favoriteColor?.toJson();
  return val;
}

ColorInput _$ColorInputFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['red', 'green', 'blue'],
      disallowNullValues: const ['red', 'green', 'blue']);
  return ColorInput(
    red: json['red'] as int,
    green: json['green'] as int,
    blue: json['blue'] as int,
  );
}

Map<String, dynamic> _$ColorInputToJson(ColorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('red', instance.red);
  writeNotNull('green', instance.green);
  writeNotNull('blue', instance.blue);
  return val;
}
