// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:starwars/graphql/schema.dart';

part '_human_fragment.gql.g.dart';

///
/// See [HomeSelectionSet] for the full stand-alone class
@JsonSerializable(createFactory: false)
mixin Home on Human {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  String get planet;

  static HomeSelectionSet fromJson(Map<String, dynamic> json) =>
      HomeSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Home]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class HomeSelectionSet extends Human with Home {
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

  HomeSelectionSet({
    this.typename,
    String home,
    this.planet,
  }) : super(
          homePlanet: home,
        );

  HomeSelectionSet.partial({
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

  /// Creates a new `HomeSelectionSet` with the given non-null values overridden
  HomeSelectionSet copyWith({
    String typename,
    String home,
    String planet,
  }) =>
      HomeSelectionSet(
        typename: typename ?? this.typename,
        home: home ?? this.home,
        planet: planet ?? this.planet,
      );

  /// Creates a new `HomeSelectionSet` with non-null values from [other] as attribute overrides
  HomeSelectionSet mergedLeftWith(covariant HomeSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      home: other.home,
      planet: other.planet,
    );
  }

  /// Creates a new `HomeSelectionSet` with non-null values from [other] as attribute defaults
  HomeSelectionSet mergedRightWith(covariant HomeSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory HomeSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$HomeSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HomeSelectionSetToJson(this);

    return json;
  }
}

///
/// See [DimensionsSelectionSet] for the full stand-alone class
@JsonSerializable(createFactory: false)
mixin Dimensions on Human {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;

  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;

  static DimensionsSelectionSet fromJson(Map<String, dynamic> json) =>
      DimensionsSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Dimensions]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class DimensionsSelectionSet extends Human with Dimensions {
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

  DimensionsSelectionSet({
    this.typename,
    double height,
    double mass,
  }) : super(
          height: height,
          mass: mass,
        );

  DimensionsSelectionSet.partial({
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

  /// Creates a new `DimensionsSelectionSet` with the given non-null values overridden
  DimensionsSelectionSet copyWith({
    String typename,
    double height,
    double mass,
  }) =>
      DimensionsSelectionSet(
        typename: typename ?? this.typename,
        height: height ?? this.height,
        mass: mass ?? this.mass,
      );

  /// Creates a new `DimensionsSelectionSet` with non-null values from [other] as attribute overrides
  DimensionsSelectionSet mergedLeftWith(
      covariant DimensionsSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      height: other.height,
      mass: other.mass,
    );
  }

  /// Creates a new `DimensionsSelectionSet` with non-null values from [other] as attribute defaults
  DimensionsSelectionSet mergedRightWith(
      covariant DimensionsSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory DimensionsSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$DimensionsSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$DimensionsSelectionSetToJson(this);

    return json;
  }
}

@JsonSerializable()
class RelationshipsStarships extends Starship with HelloMixin {
  static final String schemaTypeName = "Starship";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;

  @JsonKey(name: r'length', required: false, disallowNullValue: false)
  double get length => fields.length;

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

  RelationshipsStarships.partial({
    this.typename,
    String name,
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
  RelationshipsStarships mergedLeftWith(
      covariant RelationshipsStarships other) {
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

@JsonSerializable()
class RelationshipsFriends extends Character with HelloMixin {
  static final String schemaTypeName = "Character";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;

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

  RelationshipsFriends.partial({
    this.typename,
    String name,
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
  RelationshipsFriends mergedLeftWith(covariant RelationshipsFriends other) {
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
@JsonSerializable(createFactory: false)
mixin Relationships on Human {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'friends', required: false, disallowNullValue: false)
  List<RelationshipsFriends> get friends => fields.friends;

  @JsonKey(name: r'starships', required: false, disallowNullValue: false)
  List<RelationshipsStarships> get starships => fields.starships;

  static RelationshipsSelectionSet fromJson(Map<String, dynamic> json) =>
      RelationshipsSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Relationships]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class RelationshipsSelectionSet extends Human with Relationships {
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

  RelationshipsSelectionSet({
    this.typename,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) : super(
          friends: friends,
          starships: starships,
        );

  RelationshipsSelectionSet.partial({
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

  /// Creates a new `RelationshipsSelectionSet` with the given non-null values overridden
  RelationshipsSelectionSet copyWith({
    String typename,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) =>
      RelationshipsSelectionSet(
        typename: typename ?? this.typename,
        friends: friends ?? this.friends,
        starships: starships ?? this.starships,
      );

  /// Creates a new `RelationshipsSelectionSet` with non-null values from [other] as attribute overrides
  RelationshipsSelectionSet mergedLeftWith(
      covariant RelationshipsSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      friends: other.friends,
      starships: other.starships,
    );
  }

  /// Creates a new `RelationshipsSelectionSet` with non-null values from [other] as attribute defaults
  RelationshipsSelectionSet mergedRightWith(
      covariant RelationshipsSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory RelationshipsSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsSelectionSetToJson(this);

    return json;
  }
}

///
/// See [InfoSelectionSet] for the full stand-alone class
@JsonSerializable(createFactory: false)
mixin Info on Human implements Dimensions, Home {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;

  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;

  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  String get planet;

  static InfoSelectionSet fromJson(Map<String, dynamic> json) =>
      InfoSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Info]
///
/// Gives access to all the usual selection set helpers
@JsonSerializable()
class InfoSelectionSet extends Human with Info {
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

  InfoSelectionSet({
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

  InfoSelectionSet.partial({
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

  /// Creates a new `InfoSelectionSet` with the given non-null values overridden
  InfoSelectionSet copyWith({
    String typename,
    double height,
    double mass,
    String home,
    String planet,
  }) =>
      InfoSelectionSet(
        typename: typename ?? this.typename,
        height: height ?? this.height,
        mass: mass ?? this.mass,
        home: home ?? this.home,
        planet: planet ?? this.planet,
      );

  /// Creates a new `InfoSelectionSet` with non-null values from [other] as attribute overrides
  InfoSelectionSet mergedLeftWith(covariant InfoSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      height: other.height,
      mass: other.mass,
      home: other.home,
      planet: other.planet,
    );
  }

  /// Creates a new `InfoSelectionSet` with non-null values from [other] as attribute defaults
  InfoSelectionSet mergedRightWith(covariant InfoSelectionSet other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory InfoSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$InfoSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$InfoSelectionSetToJson(this);

    return json;
  }
}
