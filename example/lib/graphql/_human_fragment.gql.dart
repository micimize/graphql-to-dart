// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:starwars/graphql/schema.dart';

part '_human_fragment.gql.g.dart';

///
/// See [HomeSelectionSet] for the full stand-alone class
mixin HomeMixin on Human {
  static final String typeName = "Human";

  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  static Home fromJson(Map<String, dynamic> json) => Home.fromJson(json);
}

/// Materialized class that implements the fragment [Home]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class Home extends Human with HomeMixin {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  @override
  List<Object> get props => [
        ...super.props,
        planet,
      ];

  Home({
    this.typename,
    String home,
    this.planet,
  }) : super(
          homePlanet: home,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `Home` with the given non-null values overridden
  Home copyWith({
    String typename,
    String home,
    String planet,
  }) =>
      Home(
        typename: typename ?? this.typename,
        home: home ?? this.home,
        planet: planet ?? this.planet,
      );

  /// Creates a new `Home` with non-null values from [other] as attribute overrides
  Home mergeLeftWith(covariant Home other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      home: other.home,
      planet: other.planet,
    );
  }

  /// Creates a new `Home` with non-null values from [other] as attribute defaults
  Home mergedRightWith(covariant Home other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HomeToJson(this);

    return json;
  }
}

///
/// See [DimensionsSelectionSet] for the full stand-alone class
mixin DimensionsMixin on Human {
  static final String typeName = "Human";

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;
  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;
  static Dimensions fromJson(Map<String, dynamic> json) =>
      Dimensions.fromJson(json);
}

/// Materialized class that implements the fragment [Dimensions]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class Dimensions extends Human with DimensionsMixin {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  Dimensions({
    this.typename,
    double height,
    double mass,
  }) : super(
          height: height,
          mass: mass,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `Dimensions` with the given non-null values overridden
  Dimensions copyWith({
    String typename,
    double height,
    double mass,
  }) =>
      Dimensions(
        typename: typename ?? this.typename,
        height: height ?? this.height,
        mass: mass ?? this.mass,
      );

  /// Creates a new `Dimensions` with non-null values from [other] as attribute overrides
  Dimensions mergeLeftWith(covariant Dimensions other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      height: other.height,
      mass: other.mass,
    );
  }

  /// Creates a new `Dimensions` with non-null values from [other] as attribute defaults
  Dimensions mergedRightWith(covariant Dimensions other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$DimensionsToJson(this);

    return json;
  }
}

///
/// See [RelationshipsStarshipsSelectionSet] for the full stand-alone class
mixin RelationshipsStarshipsMixin on Starship, HelloMixin {
  static final String typeName = "Starship";

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;
  @JsonKey(name: r'length', required: false, disallowNullValue: false)
  double get length => fields.length;
  static RelationshipsStarships fromJson(Map<String, dynamic> json) =>
      RelationshipsStarships.fromJson(json);
}

/// Materialized class that implements the fragment [RelationshipsStarships]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class RelationshipsStarships extends Starship
    with HelloMixin, RelationshipsStarshipsMixin {
  static final String schemaTypeName = "Starship";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  RelationshipsStarships({
    this.typename,
    @required String name,
    double length,
  }) : super(
          name: name,
          length: length,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Creates a new `RelationshipsStarships` with the given non-null values overridden
  RelationshipsStarships copyWith({
    String typename,
    String name,
    double length,
  }) =>
      RelationshipsStarships(
        typename: typename ?? this.typename,
        name: name ?? this.name,
        length: length ?? this.length,
      );

  /// Creates a new `RelationshipsStarships` with non-null values from [other] as attribute overrides
  RelationshipsStarships mergeLeftWith(covariant RelationshipsStarships other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      name: other.name,
      length: other.length,
    );
  }

  /// Creates a new `RelationshipsStarships` with non-null values from [other] as attribute defaults
  RelationshipsStarships mergedRightWith(
      covariant RelationshipsStarships other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory RelationshipsStarships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsStarshipsFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsStarshipsToJson(this);

    return json;
  }
}

///
/// See [RelationshipsFriendsSelectionSet] for the full stand-alone class
mixin RelationshipsFriendsMixin on Character, HelloMixin {
  static final String typeName = "Character";

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;
  static RelationshipsFriends fromJson(Map<String, dynamic> json) =>
      RelationshipsFriends.fromJson(json);
}

/// Materialized class that implements the fragment [RelationshipsFriends]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class RelationshipsFriends extends Character
    with HelloMixin, RelationshipsFriendsMixin {
  static final String schemaTypeName = "Character";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  RelationshipsFriends({
    this.typename,
    @required String name,
  }) : super(
          name: name,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Creates a new `RelationshipsFriends` with the given non-null values overridden
  RelationshipsFriends copyWith({
    String typename,
    String name,
  }) =>
      RelationshipsFriends(
        typename: typename ?? this.typename,
        name: name ?? this.name,
      );

  /// Creates a new `RelationshipsFriends` with non-null values from [other] as attribute overrides
  RelationshipsFriends mergeLeftWith(covariant RelationshipsFriends other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      name: other.name,
    );
  }

  /// Creates a new `RelationshipsFriends` with non-null values from [other] as attribute defaults
  RelationshipsFriends mergedRightWith(covariant RelationshipsFriends other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory RelationshipsFriends.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFriendsFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsFriendsToJson(this);

    return json;
  }
}

///
/// See [RelationshipsSelectionSet] for the full stand-alone class
mixin RelationshipsMixin on Human {
  static final String typeName = "Human";

  @JsonKey(name: r'friends', required: false, disallowNullValue: false)
  List<RelationshipsFriends> get friends => fields.friends;
  @JsonKey(name: r'starships', required: false, disallowNullValue: false)
  List<RelationshipsStarships> get starships => fields.starships;
  static Relationships fromJson(Map<String, dynamic> json) =>
      Relationships.fromJson(json);
}

/// Materialized class that implements the fragment [Relationships]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class Relationships extends Human with RelationshipsMixin {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  Relationships({
    this.typename,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) : super(
          friends: friends,
          starships: starships,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `Relationships` with the given non-null values overridden
  Relationships copyWith({
    String typename,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) =>
      Relationships(
        typename: typename ?? this.typename,
        friends: friends ?? this.friends,
        starships: starships ?? this.starships,
      );

  /// Creates a new `Relationships` with non-null values from [other] as attribute overrides
  Relationships mergeLeftWith(covariant Relationships other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      friends: other.friends,
      starships: other.starships,
    );
  }

  /// Creates a new `Relationships` with non-null values from [other] as attribute defaults
  Relationships mergedRightWith(covariant Relationships other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory Relationships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsToJson(this);

    return json;
  }
}

///
/// See [InfoSelectionSet] for the full stand-alone class
mixin InfoMixin on Human implements DimensionsMixin, HomeMixin {
  static final String typeName = "Human";

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;
  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;
  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  static Info fromJson(Map<String, dynamic> json) => Info.fromJson(json);
}

/// Materialized class that implements the fragment [Info]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class Info extends Human with InfoMixin {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  @override
  List<Object> get props => [
        ...super.props,
        planet,
      ];

  Info({
    this.typename,
    double height,
    double mass,
    String home,
    this.planet,
  }) : super(
          height: height,
          mass: mass,
          homePlanet: home,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `Info` with the given non-null values overridden
  Info copyWith({
    String typename,
    double height,
    double mass,
    String home,
    String planet,
  }) =>
      Info(
        typename: typename ?? this.typename,
        height: height ?? this.height,
        mass: mass ?? this.mass,
        home: home ?? this.home,
        planet: planet ?? this.planet,
      );

  /// Creates a new `Info` with non-null values from [other] as attribute overrides
  Info mergeLeftWith(covariant Info other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      height: other.height,
      mass: other.mass,
      home: other.home,
      planet: other.planet,
    );
  }

  /// Creates a new `Info` with non-null values from [other] as attribute defaults
  Info mergedRightWith(covariant Info other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$InfoToJson(this);

    return json;
  }
}
