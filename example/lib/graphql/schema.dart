// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';

export './example_mixin.dart';

part 'schema.g.dart';

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

  /// Adds all fields from [other] to this `SearchResult`,
  /// validating that they are the same type
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant SearchResult other, {
    bool overwrite = true,
  }) {
    assert(other?.value != null,
        "Cannot add all from null union value into $this from $other");
    final _v = value;
    if (other.human != null) {
      assert(
        _v == null || human != null,
        "Cannot add all from $other.value of type human into $this.value of type ${_v.runtimeType}",
      );
      human.addAll(other.human, overwrite: overwrite);
      return null;
    }
    if (other.droid != null) {
      assert(
        _v == null || droid != null,
        "Cannot add all from $other.value of type droid into $this.value of type ${_v.runtimeType}",
      );
      droid.addAll(other.droid, overwrite: overwrite);
      return null;
    }
    if (other.starship != null) {
      assert(
        _v == null || starship != null,
        "Cannot add all from $other.value of type starship into $this.value of type ${_v.runtimeType}",
      );
      starship.addAll(other.starship, overwrite: overwrite);
      return null;
    }
  }
}

/* Input Types */

@JsonSerializable()
class ReviewInput {
  static final String typeName = "ReviewInput";

  /// 0-5 stars
  @JsonKey(required: true, disallowNullValue: true)
  int stars;

  /// Comment about the movie, optional
  @JsonKey(required: false, disallowNullValue: false)
  String commentary;

  /// Favorite color, optional
  @JsonKey(required: false, disallowNullValue: false)
  ColorInput favoriteColor;

  ReviewInput({
    @required this.stars,
    this.commentary,
    this.favoriteColor,
  });

  ReviewInput.empty();

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

  /// Adds all fields from [other] to this `ReviewInput`.
  ///
  /// If a field from [other] is already in this `ReviewInput`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant ReviewInput other, {
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

  /// Creates a copy of this `ReviewInput`
  ReviewInput copy() => ReviewInput.empty()..addAll(this);

  factory ReviewInput.fromJson(Map<String, dynamic> json) =>
      _$ReviewInputFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewInputToJson(this);
}

@JsonSerializable()
class ColorInput {
  static final String typeName = "ColorInput";

  @JsonKey(required: true, disallowNullValue: true)
  int red;
  @JsonKey(required: true, disallowNullValue: true)
  int green;
  @JsonKey(required: true, disallowNullValue: true)
  int blue;

  ColorInput({
    @required this.red,
    @required this.green,
    @required this.blue,
  });

  ColorInput.empty();

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

  /// Adds all fields from [other] to this `ColorInput`.
  ///
  /// If a field from [other] is already in this `ColorInput`,
  /// its value is not overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant ColorInput other, {
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

  /// Creates a copy of this `ColorInput`
  ColorInput copy() => ColorInput.empty()..addAll(this);

  factory ColorInput.fromJson(Map<String, dynamic> json) =>
      _$ColorInputFromJson(json);

  Map<String, dynamic> toJson() => _$ColorInputToJson(this);
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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// A character from the Star Wars universe
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `Character`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Character other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Character`
  Character copy() => Character()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// The query type, represents all of the entry points into our object graph
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `Query`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Query other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Query`
  Query copy() => Query()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// A connection object for a character's friends
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `FriendsConnection`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant FriendsConnection other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `FriendsConnection`
  FriendsConnection copy() => FriendsConnection()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// An edge object for a character's friends
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `FriendsEdge`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant FriendsEdge other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `FriendsEdge`
  FriendsEdge copy() => FriendsEdge()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// Information for paginating this connection
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `PageInfo`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant PageInfo other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `PageInfo`
  PageInfo copy() => PageInfo()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// Represents a review for a movie
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `Review`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Review other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Review`
  Review copy() => Review()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// A humanoid creature from the Star Wars universe
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `Human`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Human other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Human`
  Human copy() => Human()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

///
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `Starship`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Starship other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Starship`
  Starship copy() => Starship()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// An autonomous mechanical character in the Star Wars universe
/// NOTE: You can add unexposed fields with `addAll`
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

  /// Adds all fields from [other] to this `Droid`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Droid other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Droid`
  Droid copy() => Droid()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// The mutation type, represents all updates we can make to our data
/// NOTE: You can add unexposed fields with `addAll`
class Mutation {
  static final String typeName = "Mutation";

  @protected
  covariant _MutationFields fields;

  Mutation({
    Review createReview,
  }) : fields = _MutationFields(
          createReview: createReview,
        );

  /// Adds all fields from [other] to this `Mutation`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Mutation other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Mutation`
  Mutation copy() => Mutation()..addAll(this);

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
  /// pre-existing values are not overwritten unless `overwrite: true`
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
}

/// The subscription type, represents all subscriptions we can make to our data
/// NOTE: You can add unexposed fields with `addAll`
class Subscription {
  static final String typeName = "Subscription";

  @protected
  covariant _SubscriptionFields fields;

  Subscription({
    Review reviewAdded,
  }) : fields = _SubscriptionFields(
          reviewAdded: reviewAdded,
        );

  /// Adds all fields from [other] to this `Subscription`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  void addAll(
    covariant Subscription other, {
    bool overwrite = true,
  }) =>
      fields.addAll(other.fields, overwrite: overwrite);

  /// Creates a copy of this `Subscription`
  Subscription copy() => Subscription()..addAll(this);

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
