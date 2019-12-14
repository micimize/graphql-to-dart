import './schema.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';

///
mixin Home on Human {
  static final String typeName = "Human";

  @JsonKey(required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  set home(String home) => fields.homePlanet = home;
}
