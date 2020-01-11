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

  HomeSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
    this.planet,
  }) : super.fromFields(objectType.fields);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [HomeSelectionSet] with the given non-null values overridden
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

  /// Creates a new [HomeSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  HomeSelectionSet copyWithout({
    bool typename = false,
    bool home = false,
    bool planet = false,
  }) =>
      HomeSelectionSet(
        typename: typename == false ? this.typename : null,
        home: home == false ? this.home : null,
        planet: planet == false ? this.planet : null,
      );

  /// Creates a new [HomeSelectionSet] with non-null values from [other] as attribute overrides
  @override
  HomeSelectionSet mergedLeftWith(Human other) {
    assert(other != null, "$this Cannot be merged with null");
    if (other is Home) {
      return copyWith(
        typename: other.typename,
        home: other.home,
        planet: other.planet,
      );
    } else {
      return this << HomeSelectionSet.fromObjectType(other);
    }
  }

  /// Creates a new [HomeSelectionSet] with non-null values from [other] as attribute defaults
  @override
  HomeSelectionSet mergedRightWith(Home other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  /// Alias for [mergedLeftWith]
  @override
  HomeSelectionSet operator <<(Human other) => mergedLeftWith(other);

  /// Alias for [mergedRightWith]
  @override
  HomeSelectionSet operator >>(covariant Home other) => mergedRightWith(other);

  factory HomeSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$HomeSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HomeSelectionSetToJson(this);

    return json;
  }

  /// Construct a [HomeSelectionSet] from a [Home]
  factory HomeSelectionSet.from(Home source) {
    assert(source != null, "Cannot construct HomeSelectionSet from null");
    return HomeSelectionSet(
      typename: source.typename,
      home: source.home,
      planet: source.planet,
    );
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

  DimensionsSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [DimensionsSelectionSet] with the given non-null values overridden
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

  /// Creates a new [DimensionsSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  DimensionsSelectionSet copyWithout({
    bool typename = false,
    bool height = false,
    bool mass = false,
  }) =>
      DimensionsSelectionSet(
        typename: typename == false ? this.typename : null,
        height: height == false ? this.height : null,
        mass: mass == false ? this.mass : null,
      );

  /// Creates a new [DimensionsSelectionSet] with non-null values from [other] as attribute overrides
  @override
  DimensionsSelectionSet mergedLeftWith(Human other) {
    assert(other != null, "$this Cannot be merged with null");
    if (other is Dimensions) {
      return copyWith(
        typename: other.typename,
        height: other.height,
        mass: other.mass,
      );
    } else {
      return this << DimensionsSelectionSet.fromObjectType(other);
    }
  }

  /// Creates a new [DimensionsSelectionSet] with non-null values from [other] as attribute defaults
  @override
  DimensionsSelectionSet mergedRightWith(Dimensions other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  /// Alias for [mergedLeftWith]
  @override
  DimensionsSelectionSet operator <<(Human other) => mergedLeftWith(other);

  /// Alias for [mergedRightWith]
  @override
  DimensionsSelectionSet operator >>(covariant Dimensions other) =>
      mergedRightWith(other);

  factory DimensionsSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$DimensionsSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$DimensionsSelectionSetToJson(this);

    return json;
  }

  /// Construct a [DimensionsSelectionSet] from a [Dimensions]
  factory DimensionsSelectionSet.from(Dimensions source) {
    assert(source != null, "Cannot construct DimensionsSelectionSet from null");
    return DimensionsSelectionSet(
      typename: source.typename,
      height: source.height,
      mass: source.mass,
    );
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

  RelationshipsStarships.fromObjectType(
    Starship objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Creates a new [RelationshipsStarships] with the given non-null values overridden
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

  /// Creates a new [RelationshipsStarships] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  RelationshipsStarships copyWithout({
    bool typename = false,
    bool name = false,
    bool length = false,
  }) =>
      RelationshipsStarships(
        typename: typename == false ? this.typename : null,
        name: name == false ? this.name : null,
        length: length == false ? this.length : null,
      );

  /// Creates a new [RelationshipsStarships] with non-null values from [other] as attribute overrides
  @override
  RelationshipsStarships mergedLeftWith(Starship other) {
    assert(other != null, "$this Cannot be merged with null");
    if (other is RelationshipsStarships) {
      return copyWith(
        typename: other.typename,
        name: other.name,
        length: other.length,
      );
    } else {
      return this << RelationshipsStarships.fromObjectType(other);
    }
  }

  /// Creates a new [RelationshipsStarships] with non-null values from [other] as attribute defaults
  @override
  RelationshipsStarships mergedRightWith(RelationshipsStarships other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  /// Alias for [mergedLeftWith]
  @override
  RelationshipsStarships operator <<(Starship other) => mergedLeftWith(other);

  /// Alias for [mergedRightWith]
  @override
  RelationshipsStarships operator >>(covariant RelationshipsStarships other) =>
      mergedRightWith(other);

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

  RelationshipsFriends.fromObjectType(
    Character objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Creates a new [RelationshipsFriends] with the given non-null values overridden
  RelationshipsFriends copyWith({
    String typename,
    String name,
  }) =>
      RelationshipsFriends(
        typename: typename ?? this.typename,
        name: name ?? this.name,
      );

  /// Creates a new [RelationshipsFriends] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  RelationshipsFriends copyWithout({
    bool typename = false,
    bool name = false,
  }) =>
      RelationshipsFriends(
        typename: typename == false ? this.typename : null,
        name: name == false ? this.name : null,
      );

  /// Creates a new [RelationshipsFriends] with non-null values from [other] as attribute overrides
  @override
  RelationshipsFriends mergedLeftWith(Character other) {
    assert(other != null, "$this Cannot be merged with null");
    if (other is RelationshipsFriends) {
      return copyWith(
        typename: other.typename,
        name: other.name,
      );
    } else {
      return this << RelationshipsFriends.fromObjectType(other);
    }
  }

  /// Creates a new [RelationshipsFriends] with non-null values from [other] as attribute defaults
  @override
  RelationshipsFriends mergedRightWith(RelationshipsFriends other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  /// Alias for [mergedLeftWith]
  @override
  RelationshipsFriends operator <<(Character other) => mergedLeftWith(other);

  /// Alias for [mergedRightWith]
  @override
  RelationshipsFriends operator >>(covariant RelationshipsFriends other) =>
      mergedRightWith(other);

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

  RelationshipsSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [RelationshipsSelectionSet] with the given non-null values overridden
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

  /// Creates a new [RelationshipsSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  RelationshipsSelectionSet copyWithout({
    bool typename = false,
    bool friends = false,
    bool starships = false,
  }) =>
      RelationshipsSelectionSet(
        typename: typename == false ? this.typename : null,
        friends: friends == false ? this.friends : null,
        starships: starships == false ? this.starships : null,
      );

  /// Creates a new [RelationshipsSelectionSet] with non-null values from [other] as attribute overrides
  @override
  RelationshipsSelectionSet mergedLeftWith(Human other) {
    assert(other != null, "$this Cannot be merged with null");
    if (other is Relationships) {
      return copyWith(
        typename: other.typename,
        friends: other.friends,
        starships: other.starships,
      );
    } else {
      return this << RelationshipsSelectionSet.fromObjectType(other);
    }
  }

  /// Creates a new [RelationshipsSelectionSet] with non-null values from [other] as attribute defaults
  @override
  RelationshipsSelectionSet mergedRightWith(Relationships other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  /// Alias for [mergedLeftWith]
  @override
  RelationshipsSelectionSet operator <<(Human other) => mergedLeftWith(other);

  /// Alias for [mergedRightWith]
  @override
  RelationshipsSelectionSet operator >>(covariant Relationships other) =>
      mergedRightWith(other);

  factory RelationshipsSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsSelectionSetToJson(this);

    return json;
  }

  /// Construct a [RelationshipsSelectionSet] from a [Relationships]
  factory RelationshipsSelectionSet.from(Relationships source) {
    assert(
        source != null, "Cannot construct RelationshipsSelectionSet from null");
    return RelationshipsSelectionSet(
      typename: source.typename,
      friends: source.friends,
      starships: source.starships,
    );
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

  InfoSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
    this.planet,
  }) : super.fromFields(objectType.fields);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [InfoSelectionSet] with the given non-null values overridden
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

  /// Creates a new [InfoSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  InfoSelectionSet copyWithout({
    bool typename = false,
    bool height = false,
    bool mass = false,
    bool home = false,
    bool planet = false,
  }) =>
      InfoSelectionSet(
        typename: typename == false ? this.typename : null,
        height: height == false ? this.height : null,
        mass: mass == false ? this.mass : null,
        home: home == false ? this.home : null,
        planet: planet == false ? this.planet : null,
      );

  /// Creates a new [InfoSelectionSet] with non-null values from [other] as attribute overrides
  @override
  InfoSelectionSet mergedLeftWith(Human other) {
    assert(other != null, "$this Cannot be merged with null");
    if (other is Info) {
      return copyWith(
        typename: other.typename,
        height: other.height,
        mass: other.mass,
        home: other.home,
        planet: other.planet,
      );
    } else {
      return this << InfoSelectionSet.fromObjectType(other);
    }
  }

  /// Creates a new [InfoSelectionSet] with non-null values from [other] as attribute defaults
  @override
  InfoSelectionSet mergedRightWith(Info other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  /// Alias for [mergedLeftWith]
  @override
  InfoSelectionSet operator <<(Human other) => mergedLeftWith(other);

  /// Alias for [mergedRightWith]
  @override
  InfoSelectionSet operator >>(covariant Info other) => mergedRightWith(other);

  factory InfoSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$InfoSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$InfoSelectionSetToJson(this);

    return json;
  }

  /// Construct a [InfoSelectionSet] from a [Info]
  factory InfoSelectionSet.from(Info source) {
    assert(source != null, "Cannot construct InfoSelectionSet from null");
    return InfoSelectionSet(
      typename: source.typename,
      height: source.height,
      mass: source.mass,
      home: source.home,
      planet: source.planet,
    );
  }
}
