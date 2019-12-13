// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import './example_mixin.dart';

export './example_mixin.dart';

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

// TODO unions in dart seem ugly by necessity atm

class SearchResult {
  static const possibleTypes = const {Human, Droid, Starship};

  Human human;
  Droid droid;
  Starship starship;

  Object get value => (human ?? droid ?? starship);
}

/* Input Types */

/// The input object sent when someone is creating a new review
class _ReviewInputFields {
  /// 0-5 stars
  int stars;

  /// Comment about the movie, optional
  String commentary;

  /// Favorite color, optional
  ColorInput favoriteColor;

  _ReviewInputFields({
    this.stars,
    this.commentary,
    this.favoriteColor,
  });

  /// Adds all fields from [other] to this `_ReviewInputFields`.
  ///
  /// If a field from [other] is already in this `_ReviewInputFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _ReviewInputFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      stars = other.stars ?? stars;
      commentary = other.commentary ?? commentary;
      favoriteColor = other.favoriteColor ?? favoriteColor;
    } else {
      stars ??= other.stars;
      commentary ??= other.commentary;
      favoriteColor ??= other.favoriteColor;
    }
  }

  /// Creates a copy of this `_ReviewInputFields` but with the given fields replaced with the new values.
  _ReviewInputFields copyWith({
    int stars,
    String commentary,
    ColorInput favoriteColor,
  }) {
    return _ReviewInputFields(
      stars: stars ?? this.stars,
      commentary: commentary ?? this.commentary,
      favoriteColor: favoriteColor ?? this.favoriteColor,
    );
  }

  /// Creates a copy of this `_ReviewInputFields`
  _ReviewInputFields copy() => copyWith();
}

class ReviewInput {
  static final String typeName = "ReviewInput";

  @protected
  covariant _ReviewInputFields fields;

  ReviewInput({
    int stars,
    String commentary,
    ColorInput favoriteColor,
  }) : fields = _ReviewInputFields(
          stars: stars,
          commentary: commentary,
          favoriteColor: favoriteColor,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.stars == null) {
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
}

/// The input object sent when passing in a color
class _ColorInputFields {
  int red;
  int green;
  int blue;

  _ColorInputFields({
    this.red,
    this.green,
    this.blue,
  });

  /// Adds all fields from [other] to this `_ColorInputFields`.
  ///
  /// If a field from [other] is already in this `_ColorInputFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _ColorInputFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      red = other.red ?? red;
      green = other.green ?? green;
      blue = other.blue ?? blue;
    } else {
      red ??= other.red;
      green ??= other.green;
      blue ??= other.blue;
    }
  }

  /// Creates a copy of this `_ColorInputFields` but with the given fields replaced with the new values.
  _ColorInputFields copyWith({
    int red,
    int green,
    int blue,
  }) {
    return _ColorInputFields(
      red: red ?? this.red,
      green: green ?? this.green,
      blue: blue ?? this.blue,
    );
  }

  /// Creates a copy of this `_ColorInputFields`
  _ColorInputFields copy() => copyWith();
}

class ColorInput {
  static final String typeName = "ColorInput";

  @protected
  covariant _ColorInputFields fields;

  ColorInput({
    int red,
    int green,
    int blue,
  }) : fields = _ColorInputFields(
          red: red,
          green: green,
          blue: blue,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.red == null) {
      missingFields.add("red");
    }
    if (fields.green == null) {
      missingFields.add("green");
    }
    if (fields.blue == null) {
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
}

/* Interfaces */

/// A character from the Star Wars universe
class _CharacterFields {
  /// The ID of the character
  String id;

  /// The name of the character
  String name;

  /// The friends of the character, or an empty list if they have none
  List<Character> friends;

  /// The friends of the character exposed as a connection with edges
  FriendsConnection friendsConnection;

  /// The movies this character appears in
  List<Episode> appearsIn;

  _CharacterFields({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
  });

  /// Adds all fields from [other] to this `_CharacterFields`.
  ///
  /// If a field from [other] is already in this `_CharacterFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _CharacterFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
      name = other.name ?? name;
      friends = other.friends ?? friends;
      friendsConnection = other.friendsConnection ?? friendsConnection;
      appearsIn = other.appearsIn ?? appearsIn;
    } else {
      id ??= other.id;
      name ??= other.name;
      friends ??= other.friends;
      friendsConnection ??= other.friendsConnection;
      appearsIn ??= other.appearsIn;
    }
  }

  /// Creates a copy of this `_CharacterFields` but with the given fields replaced with the new values.
  _CharacterFields copyWith({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
  }) {
    return _CharacterFields(
      id: id ?? this.id,
      name: name ?? this.name,
      friends: friends ?? this.friends,
      friendsConnection: friendsConnection ?? this.friendsConnection,
      appearsIn: appearsIn ?? this.appearsIn,
    );
  }

  /// Creates a copy of this `_CharacterFields`
  _CharacterFields copy() => copyWith();
}

class Character {
  static final String typeName = "Character";

  @protected
  covariant _CharacterFields fields;

  Character({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
  }) : fields = _CharacterFields(
          id: id,
          name: name,
          friends: friends,
          friendsConnection: friendsConnection,
          appearsIn: appearsIn,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    if (fields.friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (fields.appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/* Types */

/// The query type, represents all of the entry points into our object graph
class _QueryFields {
  Character hero;
  List<Review> reviews;
  List<SearchResult> search;
  Character character;
  Droid droid;
  Human human;
  Starship starship;

  _QueryFields({
    this.hero,
    this.reviews,
    this.search,
    this.character,
    this.droid,
    this.human,
    this.starship,
  });

  /// Adds all fields from [other] to this `_QueryFields`.
  ///
  /// If a field from [other] is already in this `_QueryFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _QueryFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      hero = other.hero ?? hero;
      reviews = other.reviews ?? reviews;
      search = other.search ?? search;
      character = other.character ?? character;
      droid = other.droid ?? droid;
      human = other.human ?? human;
      starship = other.starship ?? starship;
    } else {
      hero ??= other.hero;
      reviews ??= other.reviews;
      search ??= other.search;
      character ??= other.character;
      droid ??= other.droid;
      human ??= other.human;
      starship ??= other.starship;
    }
  }

  /// Creates a copy of this `_QueryFields` but with the given fields replaced with the new values.
  _QueryFields copyWith({
    Character hero,
    List<Review> reviews,
    List<SearchResult> search,
    Character character,
    Droid droid,
    Human human,
    Starship starship,
  }) {
    return _QueryFields(
      hero: hero ?? this.hero,
      reviews: reviews ?? this.reviews,
      search: search ?? this.search,
      character: character ?? this.character,
      droid: droid ?? this.droid,
      human: human ?? this.human,
      starship: starship ?? this.starship,
    );
  }

  /// Creates a copy of this `_QueryFields`
  _QueryFields copy() => copyWith();
}

class Query {
  static final String typeName = "Query";

  @protected
  covariant _QueryFields fields;

  Query({
    Character hero,
    List<Review> reviews,
    List<SearchResult> search,
    Character character,
    Droid droid,
    Human human,
    Starship starship,
  }) : fields = _QueryFields(
          hero: hero,
          reviews: reviews,
          search: search,
          character: character,
          droid: droid,
          human: human,
          starship: starship,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// A connection object for a character's friends
class _FriendsConnectionFields {
  /// The total number of friends
  int totalCount;

  /// The edges for each of the character's friends.
  List<FriendsEdge> edges;

  /// A list of the friends, as a convenience when edges are not needed.
  List<Character> friends;

  /// Information for paginating this connection
  PageInfo pageInfo;

  _FriendsConnectionFields({
    this.totalCount,
    this.edges,
    this.friends,
    this.pageInfo,
  });

  /// Adds all fields from [other] to this `_FriendsConnectionFields`.
  ///
  /// If a field from [other] is already in this `_FriendsConnectionFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _FriendsConnectionFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      totalCount = other.totalCount ?? totalCount;
      edges = other.edges ?? edges;
      friends = other.friends ?? friends;
      pageInfo = other.pageInfo ?? pageInfo;
    } else {
      totalCount ??= other.totalCount;
      edges ??= other.edges;
      friends ??= other.friends;
      pageInfo ??= other.pageInfo;
    }
  }

  /// Creates a copy of this `_FriendsConnectionFields` but with the given fields replaced with the new values.
  _FriendsConnectionFields copyWith({
    int totalCount,
    List<FriendsEdge> edges,
    List<Character> friends,
    PageInfo pageInfo,
  }) {
    return _FriendsConnectionFields(
      totalCount: totalCount ?? this.totalCount,
      edges: edges ?? this.edges,
      friends: friends ?? this.friends,
      pageInfo: pageInfo ?? this.pageInfo,
    );
  }

  /// Creates a copy of this `_FriendsConnectionFields`
  _FriendsConnectionFields copy() => copyWith();
}

class FriendsConnection {
  static final String typeName = "FriendsConnection";

  @protected
  covariant _FriendsConnectionFields fields;

  FriendsConnection({
    int totalCount,
    List<FriendsEdge> edges,
    List<Character> friends,
    PageInfo pageInfo,
  }) : fields = _FriendsConnectionFields(
          totalCount: totalCount,
          edges: edges,
          friends: friends,
          pageInfo: pageInfo,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.pageInfo == null) {
      missingFields.add("pageInfo");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// An edge object for a character's friends
class _FriendsEdgeFields {
  /// A cursor used for pagination
  String cursor;

  /// The character represented by this friendship edge
  Character node;

  _FriendsEdgeFields({
    this.cursor,
    this.node,
  });

  /// Adds all fields from [other] to this `_FriendsEdgeFields`.
  ///
  /// If a field from [other] is already in this `_FriendsEdgeFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _FriendsEdgeFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      cursor = other.cursor ?? cursor;
      node = other.node ?? node;
    } else {
      cursor ??= other.cursor;
      node ??= other.node;
    }
  }

  /// Creates a copy of this `_FriendsEdgeFields` but with the given fields replaced with the new values.
  _FriendsEdgeFields copyWith({
    String cursor,
    Character node,
  }) {
    return _FriendsEdgeFields(
      cursor: cursor ?? this.cursor,
      node: node ?? this.node,
    );
  }

  /// Creates a copy of this `_FriendsEdgeFields`
  _FriendsEdgeFields copy() => copyWith();
}

class FriendsEdge {
  static final String typeName = "FriendsEdge";

  @protected
  covariant _FriendsEdgeFields fields;

  FriendsEdge({
    String cursor,
    Character node,
  }) : fields = _FriendsEdgeFields(
          cursor: cursor,
          node: node,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.cursor == null) {
      missingFields.add("cursor");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// Information for paginating this connection
class _PageInfoFields {
  String startCursor;
  String endCursor;
  bool hasNextPage;

  _PageInfoFields({
    this.startCursor,
    this.endCursor,
    this.hasNextPage,
  });

  /// Adds all fields from [other] to this `_PageInfoFields`.
  ///
  /// If a field from [other] is already in this `_PageInfoFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _PageInfoFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      startCursor = other.startCursor ?? startCursor;
      endCursor = other.endCursor ?? endCursor;
      hasNextPage = other.hasNextPage ?? hasNextPage;
    } else {
      startCursor ??= other.startCursor;
      endCursor ??= other.endCursor;
      hasNextPage ??= other.hasNextPage;
    }
  }

  /// Creates a copy of this `_PageInfoFields` but with the given fields replaced with the new values.
  _PageInfoFields copyWith({
    String startCursor,
    String endCursor,
    bool hasNextPage,
  }) {
    return _PageInfoFields(
      startCursor: startCursor ?? this.startCursor,
      endCursor: endCursor ?? this.endCursor,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  /// Creates a copy of this `_PageInfoFields`
  _PageInfoFields copy() => copyWith();
}

class PageInfo {
  static final String typeName = "PageInfo";

  @protected
  covariant _PageInfoFields fields;

  PageInfo({
    String startCursor,
    String endCursor,
    bool hasNextPage,
  }) : fields = _PageInfoFields(
          startCursor: startCursor,
          endCursor: endCursor,
          hasNextPage: hasNextPage,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.hasNextPage == null) {
      missingFields.add("hasNextPage");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// Represents a review for a movie
class _ReviewFields {
  /// The movie
  Episode episode;

  /// The number of stars this review gave, 1-5
  int stars;

  /// Comment about the movie
  String commentary;

  _ReviewFields({
    this.episode,
    this.stars,
    this.commentary,
  });

  /// Adds all fields from [other] to this `_ReviewFields`.
  ///
  /// If a field from [other] is already in this `_ReviewFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _ReviewFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      episode = other.episode ?? episode;
      stars = other.stars ?? stars;
      commentary = other.commentary ?? commentary;
    } else {
      episode ??= other.episode;
      stars ??= other.stars;
      commentary ??= other.commentary;
    }
  }

  /// Creates a copy of this `_ReviewFields` but with the given fields replaced with the new values.
  _ReviewFields copyWith({
    Episode episode,
    int stars,
    String commentary,
  }) {
    return _ReviewFields(
      episode: episode ?? this.episode,
      stars: stars ?? this.stars,
      commentary: commentary ?? this.commentary,
    );
  }

  /// Creates a copy of this `_ReviewFields`
  _ReviewFields copy() => copyWith();
}

class Review {
  static final String typeName = "Review";

  @protected
  covariant _ReviewFields fields;

  Review({
    Episode episode,
    int stars,
    String commentary,
  }) : fields = _ReviewFields(
          episode: episode,
          stars: stars,
          commentary: commentary,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.stars == null) {
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
}

/// A humanoid creature from the Star Wars universe
class _HumanFields implements _CharacterFields {
  /// The ID of the human
  String id;

  /// What this human calls themselves
  String name;

  /// The home planet of the human, or null if unknown
  String homePlanet;

  /// Height in the preferred unit, default is meters
  double height;

  /// Mass in kilograms, or null if unknown
  double mass;

  /// This human's friends, or an empty list if they have none
  List<Character> friends;

  /// The friends of the human exposed as a connection with edges
  FriendsConnection friendsConnection;

  /// The movies this human appears in
  List<Episode> appearsIn;

  /// A list of starships this person has piloted, or an empty list if none
  List<Starship> starships;

  _HumanFields({
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

  /// Adds all fields from [other] to this `_HumanFields`.
  ///
  /// If a field from [other] is already in this `_HumanFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _HumanFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
      name = other.name ?? name;
      homePlanet = other.homePlanet ?? homePlanet;
      height = other.height ?? height;
      mass = other.mass ?? mass;
      friends = other.friends ?? friends;
      friendsConnection = other.friendsConnection ?? friendsConnection;
      appearsIn = other.appearsIn ?? appearsIn;
      starships = other.starships ?? starships;
    } else {
      id ??= other.id;
      name ??= other.name;
      homePlanet ??= other.homePlanet;
      height ??= other.height;
      mass ??= other.mass;
      friends ??= other.friends;
      friendsConnection ??= other.friendsConnection;
      appearsIn ??= other.appearsIn;
      starships ??= other.starships;
    }
  }

  /// Creates a copy of this `_HumanFields` but with the given fields replaced with the new values.
  _HumanFields copyWith({
    String id,
    String name,
    String homePlanet,
    double height,
    double mass,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
    List<Starship> starships,
  }) {
    return _HumanFields(
      id: id ?? this.id,
      name: name ?? this.name,
      homePlanet: homePlanet ?? this.homePlanet,
      height: height ?? this.height,
      mass: mass ?? this.mass,
      friends: friends ?? this.friends,
      friendsConnection: friendsConnection ?? this.friendsConnection,
      appearsIn: appearsIn ?? this.appearsIn,
      starships: starships ?? this.starships,
    );
  }

  /// Creates a copy of this `_HumanFields`
  _HumanFields copy() => copyWith();
}

class Human implements Character {
  static final String typeName = "Human";

  @protected
  covariant _HumanFields fields;

  Human({
    String id,
    String name,
    String homePlanet,
    double height,
    double mass,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
    List<Starship> starships,
  }) : fields = _HumanFields(
          id: id,
          name: name,
          homePlanet: homePlanet,
          height: height,
          mass: mass,
          friends: friends,
          friendsConnection: friendsConnection,
          appearsIn: appearsIn,
          starships: starships,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    if (fields.friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (fields.appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

///
class _StarshipFields {
  /// The ID of the starship
  String id;

  /// The name of the starship
  String name;

  /// Length of the starship, along the longest axis
  double length;
  List<double> coordinates;

  _StarshipFields({
    this.id,
    this.name,
    this.length,
    this.coordinates,
  });

  /// Adds all fields from [other] to this `_StarshipFields`.
  ///
  /// If a field from [other] is already in this `_StarshipFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _StarshipFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
      name = other.name ?? name;
      length = other.length ?? length;
      coordinates = other.coordinates ?? coordinates;
    } else {
      id ??= other.id;
      name ??= other.name;
      length ??= other.length;
      coordinates ??= other.coordinates;
    }
  }

  /// Creates a copy of this `_StarshipFields` but with the given fields replaced with the new values.
  _StarshipFields copyWith({
    String id,
    String name,
    double length,
    List<double> coordinates,
  }) {
    return _StarshipFields(
      id: id ?? this.id,
      name: name ?? this.name,
      length: length ?? this.length,
      coordinates: coordinates ?? this.coordinates,
    );
  }

  /// Creates a copy of this `_StarshipFields`
  _StarshipFields copy() => copyWith();
}

class Starship {
  static final String typeName = "Starship";

  @protected
  covariant _StarshipFields fields;

  Starship({
    String id,
    String name,
    double length,
    List<double> coordinates,
  }) : fields = _StarshipFields(
          id: id,
          name: name,
          length: length,
          coordinates: coordinates,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// An autonomous mechanical character in the Star Wars universe
class _DroidFields implements _CharacterFields {
  /// The ID of the droid
  String id;

  /// What others call this droid
  String name;

  /// This droid's friends, or an empty list if they have none
  List<Character> friends;

  /// The friends of the droid exposed as a connection with edges
  FriendsConnection friendsConnection;

  /// The movies this droid appears in
  List<Episode> appearsIn;

  /// This droid's primary function
  String primaryFunction;

  _DroidFields({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
    this.primaryFunction,
  });

  /// Adds all fields from [other] to this `_DroidFields`.
  ///
  /// If a field from [other] is already in this `_DroidFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _DroidFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
      name = other.name ?? name;
      friends = other.friends ?? friends;
      friendsConnection = other.friendsConnection ?? friendsConnection;
      appearsIn = other.appearsIn ?? appearsIn;
      primaryFunction = other.primaryFunction ?? primaryFunction;
    } else {
      id ??= other.id;
      name ??= other.name;
      friends ??= other.friends;
      friendsConnection ??= other.friendsConnection;
      appearsIn ??= other.appearsIn;
      primaryFunction ??= other.primaryFunction;
    }
  }

  /// Creates a copy of this `_DroidFields` but with the given fields replaced with the new values.
  _DroidFields copyWith({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
    String primaryFunction,
  }) {
    return _DroidFields(
      id: id ?? this.id,
      name: name ?? this.name,
      friends: friends ?? this.friends,
      friendsConnection: friendsConnection ?? this.friendsConnection,
      appearsIn: appearsIn ?? this.appearsIn,
      primaryFunction: primaryFunction ?? this.primaryFunction,
    );
  }

  /// Creates a copy of this `_DroidFields`
  _DroidFields copy() => copyWith();
}

class Droid implements Character {
  static final String typeName = "Droid";

  @protected
  covariant _DroidFields fields;

  Droid({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
    String primaryFunction,
  }) : fields = _DroidFields(
          id: id,
          name: name,
          friends: friends,
          friendsConnection: friendsConnection,
          appearsIn: appearsIn,
          primaryFunction: primaryFunction,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    if (fields.friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (fields.appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// The mutation type, represents all updates we can make to our data
class _MutationFields {
  Review createReview;

  _MutationFields({
    this.createReview,
  });

  /// Adds all fields from [other] to this `_MutationFields`.
  ///
  /// If a field from [other] is already in this `_MutationFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _MutationFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      createReview = other.createReview ?? createReview;
    } else {
      createReview ??= other.createReview;
    }
  }

  /// Creates a copy of this `_MutationFields` but with the given fields replaced with the new values.
  _MutationFields copyWith({
    Review createReview,
  }) {
    return _MutationFields(
      createReview: createReview ?? this.createReview,
    );
  }

  /// Creates a copy of this `_MutationFields`
  _MutationFields copy() => copyWith();
}

class Mutation {
  static final String typeName = "Mutation";

  @protected
  covariant _MutationFields fields;

  Mutation({
    Review createReview,
  }) : fields = _MutationFields(
          createReview: createReview,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// The subscription type, represents all subscriptions we can make to our data
class _SubscriptionFields {
  Review reviewAdded;

  _SubscriptionFields({
    this.reviewAdded,
  });

  /// Adds all fields from [other] to this `_SubscriptionFields`.
  ///
  /// If a field from [other] is already in this `_SubscriptionFields`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant _SubscriptionFields other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      reviewAdded = other.reviewAdded ?? reviewAdded;
    } else {
      reviewAdded ??= other.reviewAdded;
    }
  }

  /// Creates a copy of this `_SubscriptionFields` but with the given fields replaced with the new values.
  _SubscriptionFields copyWith({
    Review reviewAdded,
  }) {
    return _SubscriptionFields(
      reviewAdded: reviewAdded ?? this.reviewAdded,
    );
  }

  /// Creates a copy of this `_SubscriptionFields`
  _SubscriptionFields copy() => copyWith();
}

class Subscription {
  static final String typeName = "Subscription";

  @protected
  covariant _SubscriptionFields fields;

  Subscription({
    Review reviewAdded,
  }) : fields = _SubscriptionFields(
          reviewAdded: reviewAdded,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}
