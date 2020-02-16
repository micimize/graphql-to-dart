// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

export './example_mixin.dart';

part 'schema.g.dart';

@immutable
// TODO this could just be a built map?
class FieldResults<Arguments, Result> extends Equatable {
  const FieldResults(this.results);

  @protected
  final Map<Arguments, Result> results;

  Result operator [](Arguments arguments) => results[arguments];

  @override
  List<Object> get props =>
      results.entries.expand((e) => [e.key, e.value]).toList();
}

abstract class GraphQLObjectType {
  /// Creates a new [GraphQLObjectType] with non-null values from [other] as attribute overrides
  GraphQLObjectType mergedLeftWith(covariant GraphQLObjectType other);

  /// Alias for [mergedLeftWith]
  GraphQLObjectType operator <<(covariant GraphQLObjectType other) =>
      mergedLeftWith(other);

  Set<String> get missingRequiredFields;

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

abstract class Partial<ObjectType extends GraphQLObjectType> extends Equatable {
  @protected
  const Partial.of(this.fields);

  final ObjectType fields;

  @override
  List<Object> get props => [fields];

  /// Creates a new [Partial<ObjectType>] with non-null values from [other] as attribute overrides
  Partial<ObjectType> mergedLeftWith(covariant Partial<ObjectType> other);
  //Partial<ObjectType> mergedLeftWith(covariant Partial<ObjectType> other);
  //    Partial.of(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Partial<ObjectType> operator <<(covariant Partial<ObjectType> other) =>
      mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields => <String>{};

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/* Enums */
/// The episodes in the Star Wars trilogy
enum Episode {
  NEWHOPE,
  EMPIRE,
  JEDI,
}

/// Units of height
enum LengthUnit {
  METER,
  FOOT,
}

// unions in dart seem ugly by necessity atm
@immutable
class SearchResult extends Equatable {
  // just to make fromObjectType work with unions
  @protected
  SearchResult get fields => this;
  @protected
  SearchResult.fromFields(SearchResult other)
      : onHuman = other.onHuman,
        onDroid = other.onDroid,
        onStarship = other.onStarship;

  static const possibleTypes = const {Human, Droid, Starship};

  final Human onHuman;
  final Droid onDroid;
  final Starship onStarship;

  const SearchResult({
    this.onHuman,
    this.onDroid,
    this.onStarship,
  });

  /// The wrapped value. Will be one of the `possibleTypes`
  Object get value => onHuman ?? onDroid ?? onStarship;

  @override
  List<Object> get props => [value];

  /// Creates a new [SearchResult] with `value.mergedLeftWith(other.value)`
  ///
  /// If [other].value is not the same type, [other] is returned.
  SearchResult mergedLeftWith(covariant SearchResult other) {
    assert(other?.value != null,
        "$this Cannot be merged with null value from $other");
    if (onHuman != null && other.onHuman != null) {
      return SearchResult(onHuman: onHuman.mergedLeftWith(other.onHuman));
    }
    if (onDroid != null && other.onDroid != null) {
      return SearchResult(onDroid: onDroid.mergedLeftWith(other.onDroid));
    }
    if (onStarship != null && other.onStarship != null) {
      return SearchResult(
          onStarship: onStarship.mergedLeftWith(other.onStarship));
    }
    // merging cannot be done
    return other;
  }

  /// Alias for [mergedLeftWith]
  SearchResult operator <<(covariant SearchResult other) =>
      mergedLeftWith(other);
}

/* Input Types */

/// The input object sent when someone is creating a new review
@JsonSerializable()
@immutable
class ReviewInput extends Equatable {
  static final String schemaTypeName = "ReviewInput";

  /// 0-5 stars
  @JsonKey(required: true, disallowNullValue: true)
  final int stars;

  /// Comment about the movie, optional
  @JsonKey(required: false, disallowNullValue: false)
  final String commentary;

  /// Favorite color, optional
  @JsonKey(required: false, disallowNullValue: false)
  final ColorInput favoriteColor;

  ReviewInput({
    @required this.stars,
    this.commentary,
    this.favoriteColor,
  });

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (stars == null) {
      missingFields.add("stars");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;

  @override
  List<Object> get props => [
        stars,
        commentary,
        favoriteColor,
      ];

  /// Creates a new [ReviewInput] with the given non-null values overridden
  ReviewInput copyWith({
    int stars,
    String commentary,
    ColorInput favoriteColor,
  }) =>
      ReviewInput(
        stars: stars ?? this.stars,
        commentary: commentary ?? this.commentary,
        favoriteColor: favoriteColor ?? this.favoriteColor,
      );

  /// Creates a new [] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  ReviewInput copyWithout({
    bool stars = false,
    bool commentary = false,
    bool favoriteColor = false,
  }) =>
      ReviewInput(
        stars: stars == false ? this.stars : null,
        commentary: commentary == false ? this.commentary : null,
        favoriteColor: favoriteColor == false ? this.favoriteColor : null,
      );

  /// Creates a new [ReviewInput] with non-null values from [other] as attribute overrides
  ReviewInput mergedLeftWith(covariant ReviewInput other) {
    assert(other != null, "$this Cannot be merged with null");
    return ReviewInput(
      stars: other.stars ?? stars,
      commentary: other.commentary ?? commentary,
      favoriteColor: other.favoriteColor ?? favoriteColor,
    );
  }

  /// Alias for [mergedLeftWith]
  ReviewInput operator <<(covariant ReviewInput other) => mergedLeftWith(other);

  factory ReviewInput.fromJson(Map<String, dynamic> json) =>
      _$ReviewInputFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewInputToJson(this);
}

/// The input object sent when passing in a color
@JsonSerializable()
@immutable
class ColorInput extends Equatable {
  static final String schemaTypeName = "ColorInput";

  @JsonKey(required: true, disallowNullValue: true)
  final int red;
  @JsonKey(required: true, disallowNullValue: true)
  final int green;
  @JsonKey(required: true, disallowNullValue: true)
  final int blue;

  ColorInput({
    @required this.red,
    @required this.green,
    @required this.blue,
  });

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (red == null) {
      missingFields.add("red");
    }
    if (green == null) {
      missingFields.add("green");
    }
    if (blue == null) {
      missingFields.add("blue");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;

  @override
  List<Object> get props => [
        red,
        green,
        blue,
      ];

  /// Creates a new [ColorInput] with the given non-null values overridden
  ColorInput copyWith({
    int red,
    int green,
    int blue,
  }) =>
      ColorInput(
        red: red ?? this.red,
        green: green ?? this.green,
        blue: blue ?? this.blue,
      );

  /// Creates a new [] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  ColorInput copyWithout({
    bool red = false,
    bool green = false,
    bool blue = false,
  }) =>
      ColorInput(
        red: red == false ? this.red : null,
        green: green == false ? this.green : null,
        blue: blue == false ? this.blue : null,
      );

  /// Creates a new [ColorInput] with non-null values from [other] as attribute overrides
  ColorInput mergedLeftWith(covariant ColorInput other) {
    assert(other != null, "$this Cannot be merged with null");
    return ColorInput(
      red: other.red ?? red,
      green: other.green ?? green,
      blue: other.blue ?? blue,
    );
  }

  /// Alias for [mergedLeftWith]
  ColorInput operator <<(covariant ColorInput other) => mergedLeftWith(other);

  factory ColorInput.fromJson(Map<String, dynamic> json) =>
      _$ColorInputFromJson(json);

  Map<String, dynamic> toJson() => _$ColorInputToJson(this);
}

/* Interfaces */

/// The friends of the character exposed as a connection with edges
class CharacterFriendsConnectionArguments extends Equatable {
  const CharacterFriendsConnectionArguments({
    this.first,
    this.after,
  });

  final int first;
  final String after;

  @override
  List<Object> get props => [
        first,
        after,
      ];
}

@immutable
class CharacterFriendsConnectionResults extends FieldResults<
    CharacterFriendsConnectionArguments, FriendsConnection> {
  const CharacterFriendsConnectionResults(
      Map<CharacterFriendsConnectionArguments, FriendsConnection> results)
      : super(results);

  FriendsConnection call({
    int first,
    String after,
  }) =>
      results[CharacterFriendsConnectionArguments(
        first: first,
        after: after,
      )];
}

/// A character from the Star Wars universe
@immutable
class Character extends GraphQLObjectType with EquatableMixin {
  Character({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
  });

  Character.partial({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
  });

  /// The ID of the character
  final String id;

  /// The name of the character
  final String name;

  /// The friends of the character, or an empty list if they have none
  final List<Character> friends;

  /// The friends of the character exposed as a connection with edges
  final CharacterFriendsConnectionResults friendsConnection;

  /// The movies this character appears in
  final List<Episode> appearsIn;

  @override
  List<Object> get props => [
        id,
        name,
        friends,
        friendsConnection,
        appearsIn,
      ];

  /// Creates a new [Character] with non-null values from [other] as attribute overrides
  Character mergedLeftWith(covariant Character other) {
    assert(other != null, "$this Cannot be merged with null");
    return Character(
      id: other.id ?? id,
      name: other.name ?? name,
      friends: other.friends ?? friends,
      friendsConnection: other.friendsConnection ?? friendsConnection,
      appearsIn: other.appearsIn ?? appearsIn,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    if (name == null) {
      missingFields.add("name");
    }
    if (friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  static final String schemaTypeName = "Character";
}

/* Types */

///
class QueryHeroArguments extends Equatable {
  const QueryHeroArguments({
    this.episode,
  });

  final Episode episode;

  @override
  List<Object> get props => [
        episode,
      ];
}

@immutable
class QueryHeroResults extends FieldResults<QueryHeroArguments, Character> {
  const QueryHeroResults(Map<QueryHeroArguments, Character> results)
      : super(results);

  Character call({
    Episode episode,
  }) =>
      results[QueryHeroArguments(
        episode: episode,
      )];
}

///
class QueryReviewsArguments extends Equatable {
  const QueryReviewsArguments({
    this.episode,
  });

  final Episode episode;

  @override
  List<Object> get props => [
        episode,
      ];
}

@immutable
class QueryReviewsResults
    extends FieldResults<QueryReviewsArguments, List<Review>> {
  const QueryReviewsResults(Map<QueryReviewsArguments, List<Review>> results)
      : super(results);

  List<Review> call({
    Episode episode,
  }) =>
      results[QueryReviewsArguments(
        episode: episode,
      )];
}

///
class QuerySearchArguments extends Equatable {
  const QuerySearchArguments({
    this.text,
  });

  final String text;

  @override
  List<Object> get props => [
        text,
      ];
}

@immutable
class QuerySearchResults
    extends FieldResults<QuerySearchArguments, List<SearchResult>> {
  const QuerySearchResults(
      Map<QuerySearchArguments, List<SearchResult>> results)
      : super(results);

  List<SearchResult> call({
    String text,
  }) =>
      results[QuerySearchArguments(
        text: text,
      )];
}

///
class QueryCharacterArguments extends Equatable {
  const QueryCharacterArguments({
    this.id,
  });

  final String id;

  @override
  List<Object> get props => [
        id,
      ];
}

@immutable
class QueryCharacterResults
    extends FieldResults<QueryCharacterArguments, Character> {
  const QueryCharacterResults(Map<QueryCharacterArguments, Character> results)
      : super(results);

  Character call({
    String id,
  }) =>
      results[QueryCharacterArguments(
        id: id,
      )];
}

///
class QueryDroidArguments extends Equatable {
  const QueryDroidArguments({
    this.id,
  });

  final String id;

  @override
  List<Object> get props => [
        id,
      ];
}

@immutable
class QueryDroidResults extends FieldResults<QueryDroidArguments, Droid> {
  const QueryDroidResults(Map<QueryDroidArguments, Droid> results)
      : super(results);

  Droid call({
    String id,
  }) =>
      results[QueryDroidArguments(
        id: id,
      )];
}

///
class QueryHumanArguments extends Equatable {
  const QueryHumanArguments({
    this.id,
  });

  final String id;

  @override
  List<Object> get props => [
        id,
      ];
}

@immutable
class QueryHumanResults extends FieldResults<QueryHumanArguments, Human> {
  const QueryHumanResults(Map<QueryHumanArguments, Human> results)
      : super(results);

  Human call({
    String id,
  }) =>
      results[QueryHumanArguments(
        id: id,
      )];
}

///
class QueryStarshipArguments extends Equatable {
  const QueryStarshipArguments({
    this.id,
  });

  final String id;

  @override
  List<Object> get props => [
        id,
      ];
}

@immutable
class QueryStarshipResults
    extends FieldResults<QueryStarshipArguments, Starship> {
  const QueryStarshipResults(Map<QueryStarshipArguments, Starship> results)
      : super(results);

  Starship call({
    String id,
  }) =>
      results[QueryStarshipArguments(
        id: id,
      )];
}

/// The query type, represents all of the entry points into our object graph
@immutable
class Query extends GraphQLObjectType with EquatableMixin {
  Query({
    this.hero,
    this.reviews,
    this.search,
    this.character,
    this.droid,
    this.human,
    this.starship,
  });

  Query.partial({
    this.hero,
    this.reviews,
    this.search,
    this.character,
    this.droid,
    this.human,
    this.starship,
  });

  final QueryHeroResults hero;

  final QueryReviewsResults reviews;

  final QuerySearchResults search;

  final QueryCharacterResults character;

  final QueryDroidResults droid;

  final QueryHumanResults human;

  final QueryStarshipResults starship;

  @override
  List<Object> get props => [
        hero,
        reviews,
        search,
        character,
        droid,
        human,
        starship,
      ];

  /// Creates a new [Query] with non-null values from [other] as attribute overrides
  Query mergedLeftWith(covariant Query other) {
    assert(other != null, "$this Cannot be merged with null");
    return Query(
      hero: other.hero ?? hero,
      reviews: other.reviews ?? reviews,
      search: other.search ?? search,
      character: other.character ?? character,
      droid: other.droid ?? droid,
      human: other.human ?? human,
      starship: other.starship ?? starship,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  static final String schemaTypeName = "Query";
}

/// A connection object for a character's friends
@immutable
class FriendsConnection extends GraphQLObjectType with EquatableMixin {
  FriendsConnection({
    this.totalCount,
    this.edges,
    this.friends,
    this.pageInfo,
  });

  FriendsConnection.partial({
    this.totalCount,
    this.edges,
    this.friends,
    this.pageInfo,
  });

  /// The total number of friends
  final int totalCount;

  /// The edges for each of the character's friends.
  final List<FriendsEdge> edges;

  /// A list of the friends, as a convenience when edges are not needed.
  final List<Character> friends;

  /// Information for paginating this connection
  final PageInfo pageInfo;

  @override
  List<Object> get props => [
        totalCount,
        edges,
        friends,
        pageInfo,
      ];

  /// Creates a new [FriendsConnection] with non-null values from [other] as attribute overrides
  FriendsConnection mergedLeftWith(covariant FriendsConnection other) {
    assert(other != null, "$this Cannot be merged with null");
    return FriendsConnection(
      totalCount: other.totalCount ?? totalCount,
      edges: other.edges ?? edges,
      friends: other.friends ?? friends,
      pageInfo: other.pageInfo ?? pageInfo,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (pageInfo == null) {
      missingFields.add("pageInfo");
    }
    return missingFields;
  }

  static final String schemaTypeName = "FriendsConnection";
}

/// An edge object for a character's friends
@immutable
class FriendsEdge extends GraphQLObjectType with EquatableMixin {
  FriendsEdge({
    this.cursor,
    this.node,
  });

  FriendsEdge.partial({
    this.cursor,
    this.node,
  });

  /// A cursor used for pagination
  final String cursor;

  /// The character represented by this friendship edge
  final Character node;

  @override
  List<Object> get props => [
        cursor,
        node,
      ];

  /// Creates a new [FriendsEdge] with non-null values from [other] as attribute overrides
  FriendsEdge mergedLeftWith(covariant FriendsEdge other) {
    assert(other != null, "$this Cannot be merged with null");
    return FriendsEdge(
      cursor: other.cursor ?? cursor,
      node: other.node ?? node,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (cursor == null) {
      missingFields.add("cursor");
    }
    return missingFields;
  }

  static final String schemaTypeName = "FriendsEdge";
}

/// Information for paginating this connection
@immutable
class PageInfo extends GraphQLObjectType with EquatableMixin {
  PageInfo({
    this.startCursor,
    this.endCursor,
    this.hasNextPage,
  });

  PageInfo.partial({
    this.startCursor,
    this.endCursor,
    this.hasNextPage,
  });

  final String startCursor;

  final String endCursor;

  final bool hasNextPage;

  @override
  List<Object> get props => [
        startCursor,
        endCursor,
        hasNextPage,
      ];

  /// Creates a new [PageInfo] with non-null values from [other] as attribute overrides
  PageInfo mergedLeftWith(covariant PageInfo other) {
    assert(other != null, "$this Cannot be merged with null");
    return PageInfo(
      startCursor: other.startCursor ?? startCursor,
      endCursor: other.endCursor ?? endCursor,
      hasNextPage: other.hasNextPage ?? hasNextPage,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (hasNextPage == null) {
      missingFields.add("hasNextPage");
    }
    return missingFields;
  }

  static final String schemaTypeName = "PageInfo";
}

/// Represents a review for a movie
@immutable
class Review extends GraphQLObjectType with EquatableMixin {
  Review({
    this.episode,
    this.stars,
    this.commentary,
  });

  Review.partial({
    this.episode,
    this.stars,
    this.commentary,
  });

  /// The movie
  final Episode episode;

  /// The number of stars this review gave, 1-5
  final int stars;

  /// Comment about the movie
  final String commentary;

  @override
  List<Object> get props => [
        episode,
        stars,
        commentary,
      ];

  /// Creates a new [Review] with non-null values from [other] as attribute overrides
  Review mergedLeftWith(covariant Review other) {
    assert(other != null, "$this Cannot be merged with null");
    return Review(
      episode: other.episode ?? episode,
      stars: other.stars ?? stars,
      commentary: other.commentary ?? commentary,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (stars == null) {
      missingFields.add("stars");
    }
    return missingFields;
  }

  static final String schemaTypeName = "Review";
}

/// Height in the preferred unit, default is meters
class HumanHeightArguments extends Equatable {
  const HumanHeightArguments({
    this.unit,
  });

  final LengthUnit unit;

  @override
  List<Object> get props => [
        unit,
      ];
}

@immutable
class HumanHeightResults extends FieldResults<HumanHeightArguments, double> {
  const HumanHeightResults(Map<HumanHeightArguments, double> results)
      : super(results);

  double call({
    LengthUnit unit,
  }) =>
      results[HumanHeightArguments(
        unit: unit,
      )];
}

/// A humanoid creature from the Star Wars universe
@immutable
class Human extends GraphQLObjectType with EquatableMixin implements Character {
  Human({
    this.id,
    this.name,
    this.homePlanet,
    this.height,
    this.mass,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
    this.starships,
  });

  Human.partial({
    this.id,
    this.name,
    this.homePlanet,
    this.height,
    this.mass,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
    this.starships,
  });

  /// The ID of the human
  final String id;

  /// What this human calls themselves
  final String name;

  /// The home planet of the human, or null if unknown
  final String homePlanet;

  /// Height in the preferred unit, default is meters
  final HumanHeightResults height;

  /// Mass in kilograms, or null if unknown
  final double mass;

  /// This human's friends, or an empty list if they have none
  final List<Character> friends;

  /// The friends of the human exposed as a connection with edges
  final CharacterFriendsConnectionResults friendsConnection;

  /// The movies this human appears in
  final List<Episode> appearsIn;

  /// A list of starships this person has piloted, or an empty list if none
  final List<Starship> starships;

  @override
  List<Object> get props => [
        id,
        name,
        homePlanet,
        height,
        mass,
        friends,
        friendsConnection,
        appearsIn,
        starships,
      ];

  /// Creates a new [Human] with non-null values from [other] as attribute overrides
  Human mergedLeftWith(covariant Human other) {
    assert(other != null, "$this Cannot be merged with null");
    return Human(
      id: other.id ?? id,
      name: other.name ?? name,
      homePlanet: other.homePlanet ?? homePlanet,
      height: other.height ?? height,
      mass: other.mass ?? mass,
      friends: other.friends ?? friends,
      friendsConnection: other.friendsConnection ?? friendsConnection,
      appearsIn: other.appearsIn ?? appearsIn,
      starships: other.starships ?? starships,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    if (name == null) {
      missingFields.add("name");
    }
    if (friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  static final String schemaTypeName = "Human";
}

/// Length of the starship, along the longest axis
class StarshipLengthArguments extends Equatable {
  const StarshipLengthArguments({
    this.unit,
  });

  final LengthUnit unit;

  @override
  List<Object> get props => [
        unit,
      ];
}

@immutable
class StarshipLengthResults
    extends FieldResults<StarshipLengthArguments, double> {
  const StarshipLengthResults(Map<StarshipLengthArguments, double> results)
      : super(results);

  double call({
    LengthUnit unit,
  }) =>
      results[StarshipLengthArguments(
        unit: unit,
      )];
}

///
@immutable
class Starship extends GraphQLObjectType with EquatableMixin {
  Starship({
    this.id,
    this.name,
    this.length,
    this.coordinates,
  });

  Starship.partial({
    this.id,
    this.name,
    this.length,
    this.coordinates,
  });

  /// The ID of the starship
  final String id;

  /// The name of the starship
  final String name;

  /// Length of the starship, along the longest axis
  final StarshipLengthResults length;

  final List<double> coordinates;

  @override
  List<Object> get props => [
        id,
        name,
        length,
        coordinates,
      ];

  /// Creates a new [Starship] with non-null values from [other] as attribute overrides
  Starship mergedLeftWith(covariant Starship other) {
    assert(other != null, "$this Cannot be merged with null");
    return Starship(
      id: other.id ?? id,
      name: other.name ?? name,
      length: other.length ?? length,
      coordinates: other.coordinates ?? coordinates,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  static final String schemaTypeName = "Starship";
}

/// An autonomous mechanical character in the Star Wars universe
@immutable
class Droid extends GraphQLObjectType with EquatableMixin implements Character {
  Droid({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
    this.primaryFunction,
  });

  Droid.partial({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
    this.primaryFunction,
  });

  /// The ID of the droid
  final String id;

  /// What others call this droid
  final String name;

  /// This droid's friends, or an empty list if they have none
  final List<Character> friends;

  /// The friends of the droid exposed as a connection with edges
  final CharacterFriendsConnectionResults friendsConnection;

  /// The movies this droid appears in
  final List<Episode> appearsIn;

  /// This droid's primary function
  final String primaryFunction;

  @override
  List<Object> get props => [
        id,
        name,
        friends,
        friendsConnection,
        appearsIn,
        primaryFunction,
      ];

  /// Creates a new [Droid] with non-null values from [other] as attribute overrides
  Droid mergedLeftWith(covariant Droid other) {
    assert(other != null, "$this Cannot be merged with null");
    return Droid(
      id: other.id ?? id,
      name: other.name ?? name,
      friends: other.friends ?? friends,
      friendsConnection: other.friendsConnection ?? friendsConnection,
      appearsIn: other.appearsIn ?? appearsIn,
      primaryFunction: other.primaryFunction ?? primaryFunction,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    if (name == null) {
      missingFields.add("name");
    }
    if (friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  static final String schemaTypeName = "Droid";
}

///
class MutationCreateReviewArguments extends Equatable {
  const MutationCreateReviewArguments({
    this.episode,
    this.review,
  });

  final Episode episode;
  final ReviewInput review;

  @override
  List<Object> get props => [
        episode,
        review,
      ];
}

@immutable
class MutationCreateReviewResults
    extends FieldResults<MutationCreateReviewArguments, Review> {
  const MutationCreateReviewResults(
      Map<MutationCreateReviewArguments, Review> results)
      : super(results);

  Review call({
    Episode episode,
    ReviewInput review,
  }) =>
      results[MutationCreateReviewArguments(
        episode: episode,
        review: review,
      )];
}

/// The mutation type, represents all updates we can make to our data
@immutable
class Mutation extends GraphQLObjectType with EquatableMixin {
  Mutation({
    this.createReview,
  });

  Mutation.partial({
    this.createReview,
  });

  final MutationCreateReviewResults createReview;

  @override
  List<Object> get props => [
        createReview,
      ];

  /// Creates a new [Mutation] with non-null values from [other] as attribute overrides
  Mutation mergedLeftWith(covariant Mutation other) {
    assert(other != null, "$this Cannot be merged with null");
    return Mutation(
      createReview: other.createReview ?? createReview,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  static final String schemaTypeName = "Mutation";
}

///
class SubscriptionReviewAddedArguments extends Equatable {
  const SubscriptionReviewAddedArguments({
    this.episode,
  });

  final Episode episode;

  @override
  List<Object> get props => [
        episode,
      ];
}

@immutable
class SubscriptionReviewAddedResults
    extends FieldResults<SubscriptionReviewAddedArguments, Review> {
  const SubscriptionReviewAddedResults(
      Map<SubscriptionReviewAddedArguments, Review> results)
      : super(results);

  Review call({
    Episode episode,
  }) =>
      results[SubscriptionReviewAddedArguments(
        episode: episode,
      )];
}

/// The subscription type, represents all subscriptions we can make to our data
@immutable
class Subscription extends GraphQLObjectType with EquatableMixin {
  Subscription({
    this.reviewAdded,
  });

  Subscription.partial({
    this.reviewAdded,
  });

  final SubscriptionReviewAddedResults reviewAdded;

  @override
  List<Object> get props => [
        reviewAdded,
      ];

  /// Creates a new [Subscription] with non-null values from [other] as attribute overrides
  Subscription mergedLeftWith(covariant Subscription other) {
    assert(other != null, "$this Cannot be merged with null");
    return Subscription(
      reviewAdded: other.reviewAdded ?? reviewAdded,
    );
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  static final String schemaTypeName = "Subscription";
}
