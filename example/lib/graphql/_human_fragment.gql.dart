// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';
import 'package:starwars/graphql/schema.dart';

part '_human_fragment.gql.g.dart';

///
/// See [HomeSelectionSet] for the full stand-alone class
mixin Home on Human {
  static final String typeName = "Human";

  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  set home(String home) => fields.homePlanet = home;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  String planet;

  /// Copies fields from [other] into a new `Home`
  static HomeSelectionSet from(Human other) => HomeSelectionSet.from(other);

  static HomeSelectionSet fromJson(Map<String, dynamic> json) =>
      HomeSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Home]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class HomeSelectionSet extends Human with Home {
  static final String schemaTypeName = "Human";

  @protected
  String typename;

  HomeSelectionSet({
    String home,
    String planet,
  }) : super(
          homePlanet: home,
        ) {
    this.planet = planet;
  }

  HomeSelectionSet.empty();

  /// Creates a copy of this `HomeSelectionSet`
  HomeSelectionSet copy() => HomeSelectionSet.empty()..addAll(this);

  /// Copies fields from [other] into a new `HomeSelectionSet`
  HomeSelectionSet.from(Human other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `HomeSelectionSet`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant HomeSelectionSet other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);

    if (overwrite != null && overwrite) {
      planet = other.planet ?? planet;
    } else {
      planet ??= other.planet;
    }
  }

  factory HomeSelectionSet.fromJson(Map<String, dynamic> json) {
    HomeSelectionSet instance = _$HomeSelectionSetFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HomeSelectionSetToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

///
/// See [DimensionsSelectionSet] for the full stand-alone class
mixin Dimensions on Human {
  static final String typeName = "Human";

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;
  set height(double height) => fields.height = height;
  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;
  set mass(double mass) => fields.mass = mass;

  /// Copies fields from [other] into a new `Dimensions`
  static DimensionsSelectionSet from(Human other) =>
      DimensionsSelectionSet.from(other);

  static DimensionsSelectionSet fromJson(Map<String, dynamic> json) =>
      DimensionsSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Dimensions]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class DimensionsSelectionSet extends Human with Dimensions {
  static final String schemaTypeName = "Human";

  @protected
  String typename;

  DimensionsSelectionSet({
    double height,
    double mass,
  }) : super(
          height: height,
          mass: mass,
        );

  DimensionsSelectionSet.empty();

  /// Creates a copy of this `DimensionsSelectionSet`
  DimensionsSelectionSet copy() => DimensionsSelectionSet.empty()..addAll(this);

  /// Copies fields from [other] into a new `DimensionsSelectionSet`
  DimensionsSelectionSet.from(Human other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `DimensionsSelectionSet`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant DimensionsSelectionSet other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory DimensionsSelectionSet.fromJson(Map<String, dynamic> json) {
    DimensionsSelectionSet instance = _$DimensionsSelectionSetFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$DimensionsSelectionSetToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

@JsonSerializable()
class RelationshipsStarships extends Starship with HelloMixin {
  static final String schemaTypeName = "Starship";

  @protected
  String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;
  set name(String name) => fields.name = name;
  @JsonKey(name: r'length', required: false, disallowNullValue: false)
  double get length => fields.length;
  set length(double length) => fields.length = length;
  RelationshipsStarships({
    @required String name,
    double length,
  }) : super(
          name: name,
          length: length,
        );

  RelationshipsStarships.empty();

  /// Creates a copy of this `RelationshipsStarships`
  RelationshipsStarships copy() => RelationshipsStarships.empty()..addAll(this);

  /// Copies fields from [other] into a new `RelationshipsStarships`
  RelationshipsStarships.from(Starship other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Adds all fields from [other] to this `RelationshipsStarships`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant RelationshipsStarships other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory RelationshipsStarships.fromJson(Map<String, dynamic> json) {
    RelationshipsStarships instance = _$RelationshipsStarshipsFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsStarshipsToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

@JsonSerializable()
class RelationshipsFriends extends Character with HelloMixin {
  static final String schemaTypeName = "Character";

  @protected
  String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;
  set name(String name) => fields.name = name;
  RelationshipsFriends({
    @required String name,
  }) : super(
          name: name,
        );

  RelationshipsFriends.empty();

  /// Creates a copy of this `RelationshipsFriends`
  RelationshipsFriends copy() => RelationshipsFriends.empty()..addAll(this);

  /// Copies fields from [other] into a new `RelationshipsFriends`
  RelationshipsFriends.from(Character other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Adds all fields from [other] to this `RelationshipsFriends`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant RelationshipsFriends other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory RelationshipsFriends.fromJson(Map<String, dynamic> json) {
    RelationshipsFriends instance = _$RelationshipsFriendsFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsFriendsToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

///
/// See [RelationshipsSelectionSet] for the full stand-alone class
mixin Relationships on Human {
  static final String typeName = "Human";

  @JsonKey(name: r'friends', required: false, disallowNullValue: false)
  List<RelationshipsFriends> get friends => fields.friends;
  set friends(List<RelationshipsFriends> friends) => fields.friends = friends;
  @JsonKey(name: r'starships', required: false, disallowNullValue: false)
  List<RelationshipsStarships> get starships => fields.starships;
  set starships(List<RelationshipsStarships> starships) =>
      fields.starships = starships;

  /// Copies fields from [other] into a new `Relationships`
  static RelationshipsSelectionSet from(Human other) =>
      RelationshipsSelectionSet.from(other);

  static RelationshipsSelectionSet fromJson(Map<String, dynamic> json) =>
      RelationshipsSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Relationships]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class RelationshipsSelectionSet extends Human with Relationships {
  static final String schemaTypeName = "Human";

  @protected
  String typename;

  RelationshipsSelectionSet({
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) : super(
          friends: friends,
          starships: starships,
        );

  RelationshipsSelectionSet.empty();

  /// Creates a copy of this `RelationshipsSelectionSet`
  RelationshipsSelectionSet copy() =>
      RelationshipsSelectionSet.empty()..addAll(this);

  /// Copies fields from [other] into a new `RelationshipsSelectionSet`
  RelationshipsSelectionSet.from(Human other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `RelationshipsSelectionSet`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant RelationshipsSelectionSet other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory RelationshipsSelectionSet.fromJson(Map<String, dynamic> json) {
    RelationshipsSelectionSet instance =
        _$RelationshipsSelectionSetFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsSelectionSetToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

///
/// See [InfoSelectionSet] for the full stand-alone class
mixin Info on Human implements Dimensions, Home {
  static final String typeName = "Human";

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;
  set height(double height) => fields.height = height;
  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;
  set mass(double mass) => fields.mass = mass;
  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  set home(String home) => fields.homePlanet = home;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  String planet;

  /// Copies fields from [other] into a new `Info`
  static InfoSelectionSet from(Human other) => InfoSelectionSet.from(other);

  static InfoSelectionSet fromJson(Map<String, dynamic> json) =>
      InfoSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Info]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class InfoSelectionSet extends Human with Info {
  static final String schemaTypeName = "Human";

  @protected
  String typename;

  InfoSelectionSet({
    double height,
    double mass,
    String home,
    String planet,
  }) : super(
          height: height,
          mass: mass,
          homePlanet: home,
        ) {
    this.planet = planet;
  }

  InfoSelectionSet.empty();

  /// Creates a copy of this `InfoSelectionSet`
  InfoSelectionSet copy() => InfoSelectionSet.empty()..addAll(this);

  /// Copies fields from [other] into a new `InfoSelectionSet`
  InfoSelectionSet.from(Human other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `InfoSelectionSet`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant InfoSelectionSet other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);

    if (overwrite != null && overwrite) {
      planet = other.planet ?? planet;
    } else {
      planet ??= other.planet;
    }
  }

  factory InfoSelectionSet.fromJson(Map<String, dynamic> json) {
    InfoSelectionSet instance = _$InfoSelectionSetFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$InfoSelectionSetToJson(this);
    json['__typename'] = typename;

    return json;
  }
}
