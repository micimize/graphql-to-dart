// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part './starwars_graphql_serializers.g.dart';

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

abstract class ToJson {
  Map<String, dynamic> toJson();
}

// TODO unions in dart seem ugly by necessity atm

class SearchResult {
  static const possibleTypes = const {Human, Droid, Starship};

  Human human;
  Droid droid;
  Starship starship;

  SearchResult.empty();

  ToJson get value => (Human ?? Droid ?? Starship) as ToJson;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => value.toJson();

  static deserializeFromJson(Map<String, dynamic> json) {
    SearchResult instance = SearchResult.empty();
    switch (json['__typename']) {
      case 'Human':
        return instance..human = Human.fromJson(json);
      case 'Droid':
        return instance..droid = Droid.fromJson(json);
      case 'Starship':
        return instance..starship = Starship.fromJson(json);
      default:
        return instance;
    }
  }

  static Map<String, dynamic> serializeToJson(SearchResult instance) =>
      instance.value.toJson();
}

/* Input Types */
/// The input object sent when someone is creating a new review
@JsonSerializable()
class ReviewInput implements ToJson {
  String __typename;

  /// 0-5 stars
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  int stars;

  /// Comment about the movie, optional
  String commentary;

  /// Favorite color, optional
  ColorInput favorite_color;

  ReviewInput({
    @required this.stars,
    this.commentary,
    this.favorite_color,
  });

  /// Construct an empty `ReviewInput`
  ReviewInput.empty();

  /// Adds all fields from [other] to this `ReviewInput`.
  ///
  /// If a field from [other] is already in this `ReviewInput`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant ReviewInput other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      stars = other.stars ?? stars;
      commentary = other.commentary ?? commentary;
      favorite_color = other.favorite_color ?? favorite_color;
    } else {
      stars ??= other.stars;
      commentary ??= other.commentary;
      favorite_color ??= other.favorite_color;
    }
  }

  /// Creates a copy of this `ReviewInput` but with the given fields replaced with the new values.
  ReviewInput copyWith({
    int stars,
    String commentary,
    ColorInput favorite_color,
  }) {
    return ReviewInput(
      stars: stars ?? this.stars,
      commentary: commentary ?? this.commentary,
      favorite_color: favorite_color ?? this.favorite_color,
    );
  }

  /// Creates a copy of this `ReviewInput`
  ReviewInput copy() => copyWith();

  factory ReviewInput.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static ReviewInput deserializeFromJson(Map<String, dynamic> json) {
    ReviewInput instance = _$ReviewInputFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(ReviewInput instance) {
    Map<String, dynamic> json = _$ReviewInputToJson(instance);

    return json;
  }
}

/// The input object sent when passing in a color
@JsonSerializable()
class ColorInput implements ToJson {
  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  int red;
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  int green;
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  int blue;

  ColorInput({
    @required this.red,
    @required this.green,
    @required this.blue,
  });

  /// Construct an empty `ColorInput`
  ColorInput.empty();

  /// Adds all fields from [other] to this `ColorInput`.
  ///
  /// If a field from [other] is already in this `ColorInput`,
  /// its value is overwritten, unless  `overwrite: true` is specified
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

  /// Creates a copy of this `ColorInput` but with the given fields replaced with the new values.
  ColorInput copyWith({
    int red,
    int green,
    int blue,
  }) {
    return ColorInput(
      red: red ?? this.red,
      green: green ?? this.green,
      blue: blue ?? this.blue,
    );
  }

  /// Creates a copy of this `ColorInput`
  ColorInput copy() => copyWith();

  factory ColorInput.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static ColorInput deserializeFromJson(Map<String, dynamic> json) {
    ColorInput instance = _$ColorInputFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(ColorInput instance) {
    Map<String, dynamic> json = _$ColorInputToJson(instance);

    return json;
  }
}

/* Interfaces */
/// A character from the Star Wars universe
@JsonSerializable()
class Character implements ToJson {
  String __typename;

  /// The ID of the character
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  /// The name of the character
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String name;

  /// The friends of the character, or an empty list if they have none
  List<Character> friends;

  /// The friends of the character exposed as a connection with edges
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  FriendsConnection friendsConnection;

  /// The movies this character appears in
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  List<Episode> appearsIn;

  Character({
    @required this.id,
    @required this.name,
    this.friends,
    @required this.friendsConnection,
    @required this.appearsIn,
  });

  /// Construct an empty `Character`
  Character.empty();

  /// Adds all fields from [other] to this `Character`.
  ///
  /// If a field from [other] is already in this `Character`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Character other, {
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

  /// Creates a copy of this `Character` but with the given fields replaced with the new values.
  Character copyWith({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
  }) {
    return Character(
      id: id ?? this.id,
      name: name ?? this.name,
      friends: friends ?? this.friends,
      friendsConnection: friendsConnection ?? this.friendsConnection,
      appearsIn: appearsIn ?? this.appearsIn,
    );
  }

  /// Creates a copy of this `Character`
  Character copy() => copyWith();

  factory Character.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Character deserializeFromJson(Map<String, dynamic> json) {
    Character instance = _$CharacterFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Character instance) {
    Map<String, dynamic> json = _$CharacterToJson(instance);

    return json;
  }
}

@JsonSerializable()
class CharacterFriendsConnectionArgs implements ToJson {
  String __typename;

  int first;
  String after;

  CharacterFriendsConnectionArgs({
    this.first,
    this.after,
  });

  /// Construct an empty `CharacterFriendsConnectionArgs`
  CharacterFriendsConnectionArgs.empty();

  /// Adds all fields from [other] to this `CharacterFriendsConnectionArgs`.
  ///
  /// If a field from [other] is already in this `CharacterFriendsConnectionArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant CharacterFriendsConnectionArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      first = other.first ?? first;
      after = other.after ?? after;
    } else {
      first ??= other.first;
      after ??= other.after;
    }
  }

  /// Creates a copy of this `CharacterFriendsConnectionArgs` but with the given fields replaced with the new values.
  CharacterFriendsConnectionArgs copyWith({
    int first,
    String after,
  }) {
    return CharacterFriendsConnectionArgs(
      first: first ?? this.first,
      after: after ?? this.after,
    );
  }

  /// Creates a copy of this `CharacterFriendsConnectionArgs`
  CharacterFriendsConnectionArgs copy() => copyWith();

  factory CharacterFriendsConnectionArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static CharacterFriendsConnectionArgs deserializeFromJson(
      Map<String, dynamic> json) {
    CharacterFriendsConnectionArgs instance =
        _$CharacterFriendsConnectionArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      CharacterFriendsConnectionArgs instance) {
    Map<String, dynamic> json =
        _$CharacterFriendsConnectionArgsToJson(instance);

    return json;
  }
}

/* Types */
/// The query type, represents all of the entry points into our object graph
@JsonSerializable()
class Query implements ToJson {
  String __typename;

  Character hero;
  List<Review> reviews;
  List<SearchResult> search;
  Character character;
  Droid droid;
  Human human;
  Starship starship;

  Query({
    this.hero,
    this.reviews,
    this.search,
    this.character,
    this.droid,
    this.human,
    this.starship,
  });

  /// Construct an empty `Query`
  Query.empty();

  /// Adds all fields from [other] to this `Query`.
  ///
  /// If a field from [other] is already in this `Query`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Query other, {
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

  /// Creates a copy of this `Query` but with the given fields replaced with the new values.
  Query copyWith({
    Character hero,
    List<Review> reviews,
    List<SearchResult> search,
    Character character,
    Droid droid,
    Human human,
    Starship starship,
  }) {
    return Query(
      hero: hero ?? this.hero,
      reviews: reviews ?? this.reviews,
      search: search ?? this.search,
      character: character ?? this.character,
      droid: droid ?? this.droid,
      human: human ?? this.human,
      starship: starship ?? this.starship,
    );
  }

  /// Creates a copy of this `Query`
  Query copy() => copyWith();

  factory Query.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Query deserializeFromJson(Map<String, dynamic> json) {
    Query instance = _$QueryFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Query instance) {
    Map<String, dynamic> json = _$QueryToJson(instance);

    return json;
  }
}

@JsonSerializable()
class QueryHeroArgs implements ToJson {
  String __typename;

  Episode episode;

  QueryHeroArgs({
    this.episode,
  });

  /// Construct an empty `QueryHeroArgs`
  QueryHeroArgs.empty();

  /// Adds all fields from [other] to this `QueryHeroArgs`.
  ///
  /// If a field from [other] is already in this `QueryHeroArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant QueryHeroArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      episode = other.episode ?? episode;
    } else {
      episode ??= other.episode;
    }
  }

  /// Creates a copy of this `QueryHeroArgs` but with the given fields replaced with the new values.
  QueryHeroArgs copyWith({
    Episode episode,
  }) {
    return QueryHeroArgs(
      episode: episode ?? this.episode,
    );
  }

  /// Creates a copy of this `QueryHeroArgs`
  QueryHeroArgs copy() => copyWith();

  factory QueryHeroArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static QueryHeroArgs deserializeFromJson(Map<String, dynamic> json) {
    QueryHeroArgs instance = _$QueryHeroArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(QueryHeroArgs instance) {
    Map<String, dynamic> json = _$QueryHeroArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class QueryReviewsArgs implements ToJson {
  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  Episode episode;

  QueryReviewsArgs({
    @required this.episode,
  });

  /// Construct an empty `QueryReviewsArgs`
  QueryReviewsArgs.empty();

  /// Adds all fields from [other] to this `QueryReviewsArgs`.
  ///
  /// If a field from [other] is already in this `QueryReviewsArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant QueryReviewsArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      episode = other.episode ?? episode;
    } else {
      episode ??= other.episode;
    }
  }

  /// Creates a copy of this `QueryReviewsArgs` but with the given fields replaced with the new values.
  QueryReviewsArgs copyWith({
    Episode episode,
  }) {
    return QueryReviewsArgs(
      episode: episode ?? this.episode,
    );
  }

  /// Creates a copy of this `QueryReviewsArgs`
  QueryReviewsArgs copy() => copyWith();

  factory QueryReviewsArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static QueryReviewsArgs deserializeFromJson(Map<String, dynamic> json) {
    QueryReviewsArgs instance = _$QueryReviewsArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(QueryReviewsArgs instance) {
    Map<String, dynamic> json = _$QueryReviewsArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class QuerySearchArgs implements ToJson {
  String __typename;

  String text;

  QuerySearchArgs({
    this.text,
  });

  /// Construct an empty `QuerySearchArgs`
  QuerySearchArgs.empty();

  /// Adds all fields from [other] to this `QuerySearchArgs`.
  ///
  /// If a field from [other] is already in this `QuerySearchArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant QuerySearchArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      text = other.text ?? text;
    } else {
      text ??= other.text;
    }
  }

  /// Creates a copy of this `QuerySearchArgs` but with the given fields replaced with the new values.
  QuerySearchArgs copyWith({
    String text,
  }) {
    return QuerySearchArgs(
      text: text ?? this.text,
    );
  }

  /// Creates a copy of this `QuerySearchArgs`
  QuerySearchArgs copy() => copyWith();

  factory QuerySearchArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static QuerySearchArgs deserializeFromJson(Map<String, dynamic> json) {
    QuerySearchArgs instance = _$QuerySearchArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(QuerySearchArgs instance) {
    Map<String, dynamic> json = _$QuerySearchArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class QueryCharacterArgs implements ToJson {
  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  QueryCharacterArgs({
    @required this.id,
  });

  /// Construct an empty `QueryCharacterArgs`
  QueryCharacterArgs.empty();

  /// Adds all fields from [other] to this `QueryCharacterArgs`.
  ///
  /// If a field from [other] is already in this `QueryCharacterArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant QueryCharacterArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
    } else {
      id ??= other.id;
    }
  }

  /// Creates a copy of this `QueryCharacterArgs` but with the given fields replaced with the new values.
  QueryCharacterArgs copyWith({
    String id,
  }) {
    return QueryCharacterArgs(
      id: id ?? this.id,
    );
  }

  /// Creates a copy of this `QueryCharacterArgs`
  QueryCharacterArgs copy() => copyWith();

  factory QueryCharacterArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static QueryCharacterArgs deserializeFromJson(Map<String, dynamic> json) {
    QueryCharacterArgs instance = _$QueryCharacterArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(QueryCharacterArgs instance) {
    Map<String, dynamic> json = _$QueryCharacterArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class QueryDroidArgs implements ToJson {
  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  QueryDroidArgs({
    @required this.id,
  });

  /// Construct an empty `QueryDroidArgs`
  QueryDroidArgs.empty();

  /// Adds all fields from [other] to this `QueryDroidArgs`.
  ///
  /// If a field from [other] is already in this `QueryDroidArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant QueryDroidArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
    } else {
      id ??= other.id;
    }
  }

  /// Creates a copy of this `QueryDroidArgs` but with the given fields replaced with the new values.
  QueryDroidArgs copyWith({
    String id,
  }) {
    return QueryDroidArgs(
      id: id ?? this.id,
    );
  }

  /// Creates a copy of this `QueryDroidArgs`
  QueryDroidArgs copy() => copyWith();

  factory QueryDroidArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static QueryDroidArgs deserializeFromJson(Map<String, dynamic> json) {
    QueryDroidArgs instance = _$QueryDroidArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(QueryDroidArgs instance) {
    Map<String, dynamic> json = _$QueryDroidArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class QueryHumanArgs implements ToJson {
  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  QueryHumanArgs({
    @required this.id,
  });

  /// Construct an empty `QueryHumanArgs`
  QueryHumanArgs.empty();

  /// Adds all fields from [other] to this `QueryHumanArgs`.
  ///
  /// If a field from [other] is already in this `QueryHumanArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant QueryHumanArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
    } else {
      id ??= other.id;
    }
  }

  /// Creates a copy of this `QueryHumanArgs` but with the given fields replaced with the new values.
  QueryHumanArgs copyWith({
    String id,
  }) {
    return QueryHumanArgs(
      id: id ?? this.id,
    );
  }

  /// Creates a copy of this `QueryHumanArgs`
  QueryHumanArgs copy() => copyWith();

  factory QueryHumanArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static QueryHumanArgs deserializeFromJson(Map<String, dynamic> json) {
    QueryHumanArgs instance = _$QueryHumanArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(QueryHumanArgs instance) {
    Map<String, dynamic> json = _$QueryHumanArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class QueryStarshipArgs implements ToJson {
  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  QueryStarshipArgs({
    @required this.id,
  });

  /// Construct an empty `QueryStarshipArgs`
  QueryStarshipArgs.empty();

  /// Adds all fields from [other] to this `QueryStarshipArgs`.
  ///
  /// If a field from [other] is already in this `QueryStarshipArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant QueryStarshipArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      id = other.id ?? id;
    } else {
      id ??= other.id;
    }
  }

  /// Creates a copy of this `QueryStarshipArgs` but with the given fields replaced with the new values.
  QueryStarshipArgs copyWith({
    String id,
  }) {
    return QueryStarshipArgs(
      id: id ?? this.id,
    );
  }

  /// Creates a copy of this `QueryStarshipArgs`
  QueryStarshipArgs copy() => copyWith();

  factory QueryStarshipArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static QueryStarshipArgs deserializeFromJson(Map<String, dynamic> json) {
    QueryStarshipArgs instance = _$QueryStarshipArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(QueryStarshipArgs instance) {
    Map<String, dynamic> json = _$QueryStarshipArgsToJson(instance);

    return json;
  }
}

/// A connection object for a character's friends
@JsonSerializable()
class FriendsConnection implements ToJson {
  String __typename;

  /// The total number of friends
  int totalCount;

  /// The edges for each of the character's friends.
  List<FriendsEdge> edges;

  /// A list of the friends, as a convenience when edges are not needed.
  List<Character> friends;

  /// Information for paginating this connection
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  PageInfo pageInfo;

  FriendsConnection({
    this.totalCount,
    this.edges,
    this.friends,
    @required this.pageInfo,
  });

  /// Construct an empty `FriendsConnection`
  FriendsConnection.empty();

  /// Adds all fields from [other] to this `FriendsConnection`.
  ///
  /// If a field from [other] is already in this `FriendsConnection`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant FriendsConnection other, {
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

  /// Creates a copy of this `FriendsConnection` but with the given fields replaced with the new values.
  FriendsConnection copyWith({
    int totalCount,
    List<FriendsEdge> edges,
    List<Character> friends,
    PageInfo pageInfo,
  }) {
    return FriendsConnection(
      totalCount: totalCount ?? this.totalCount,
      edges: edges ?? this.edges,
      friends: friends ?? this.friends,
      pageInfo: pageInfo ?? this.pageInfo,
    );
  }

  /// Creates a copy of this `FriendsConnection`
  FriendsConnection copy() => copyWith();

  factory FriendsConnection.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static FriendsConnection deserializeFromJson(Map<String, dynamic> json) {
    FriendsConnection instance = _$FriendsConnectionFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(FriendsConnection instance) {
    Map<String, dynamic> json = _$FriendsConnectionToJson(instance);

    return json;
  }
}

/// An edge object for a character's friends
@JsonSerializable()
class FriendsEdge implements ToJson {
  String __typename;

  /// A cursor used for pagination
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String cursor;

  /// The character represented by this friendship edge
  Character node;

  FriendsEdge({
    @required this.cursor,
    this.node,
  });

  /// Construct an empty `FriendsEdge`
  FriendsEdge.empty();

  /// Adds all fields from [other] to this `FriendsEdge`.
  ///
  /// If a field from [other] is already in this `FriendsEdge`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant FriendsEdge other, {
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

  /// Creates a copy of this `FriendsEdge` but with the given fields replaced with the new values.
  FriendsEdge copyWith({
    String cursor,
    Character node,
  }) {
    return FriendsEdge(
      cursor: cursor ?? this.cursor,
      node: node ?? this.node,
    );
  }

  /// Creates a copy of this `FriendsEdge`
  FriendsEdge copy() => copyWith();

  factory FriendsEdge.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static FriendsEdge deserializeFromJson(Map<String, dynamic> json) {
    FriendsEdge instance = _$FriendsEdgeFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(FriendsEdge instance) {
    Map<String, dynamic> json = _$FriendsEdgeToJson(instance);

    return json;
  }
}

/// Information for paginating this connection
@JsonSerializable()
class PageInfo implements ToJson {
  String __typename;

  String startCursor;
  String endCursor;
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  bool hasNextPage;

  PageInfo({
    this.startCursor,
    this.endCursor,
    @required this.hasNextPage,
  });

  /// Construct an empty `PageInfo`
  PageInfo.empty();

  /// Adds all fields from [other] to this `PageInfo`.
  ///
  /// If a field from [other] is already in this `PageInfo`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant PageInfo other, {
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

  /// Creates a copy of this `PageInfo` but with the given fields replaced with the new values.
  PageInfo copyWith({
    String startCursor,
    String endCursor,
    bool hasNextPage,
  }) {
    return PageInfo(
      startCursor: startCursor ?? this.startCursor,
      endCursor: endCursor ?? this.endCursor,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  /// Creates a copy of this `PageInfo`
  PageInfo copy() => copyWith();

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static PageInfo deserializeFromJson(Map<String, dynamic> json) {
    PageInfo instance = _$PageInfoFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(PageInfo instance) {
    Map<String, dynamic> json = _$PageInfoToJson(instance);

    return json;
  }
}

/// Represents a review for a movie
@JsonSerializable()
class Review implements ToJson {
  String __typename;

  /// The movie
  Episode episode;

  /// The number of stars this review gave, 1-5
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  int stars;

  /// Comment about the movie
  String commentary;

  Review({
    this.episode,
    @required this.stars,
    this.commentary,
  });

  /// Construct an empty `Review`
  Review.empty();

  /// Adds all fields from [other] to this `Review`.
  ///
  /// If a field from [other] is already in this `Review`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Review other, {
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

  /// Creates a copy of this `Review` but with the given fields replaced with the new values.
  Review copyWith({
    Episode episode,
    int stars,
    String commentary,
  }) {
    return Review(
      episode: episode ?? this.episode,
      stars: stars ?? this.stars,
      commentary: commentary ?? this.commentary,
    );
  }

  /// Creates a copy of this `Review`
  Review copy() => copyWith();

  factory Review.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Review deserializeFromJson(Map<String, dynamic> json) {
    Review instance = _$ReviewFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Review instance) {
    Map<String, dynamic> json = _$ReviewToJson(instance);

    return json;
  }
}

/// A humanoid creature from the Star Wars universe
@JsonSerializable()
class Human implements ToJson, Character {
  String __typename;

  /// The ID of the human
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  /// What this human calls themselves
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
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
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  FriendsConnection friendsConnection;

  /// The movies this human appears in
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  List<Episode> appearsIn;

  /// A list of starships this person has piloted, or an empty list if none
  List<Starship> starships;

  Human({
    @required this.id,
    @required this.name,
    this.homePlanet,
    this.height,
    this.mass,
    this.friends,
    @required this.friendsConnection,
    @required this.appearsIn,
    this.starships,
  });

  /// Construct an empty `Human`
  Human.empty();

  /// Adds all fields from [other] to this `Human`.
  ///
  /// If a field from [other] is already in this `Human`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Human other, {
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

  /// Creates a copy of this `Human` but with the given fields replaced with the new values.
  Human copyWith({
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
    return Human(
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

  /// Creates a copy of this `Human`
  Human copy() => copyWith();

  factory Human.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Human deserializeFromJson(Map<String, dynamic> json) {
    Human instance = _$HumanFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Human instance) {
    Map<String, dynamic> json = _$HumanToJson(instance);

    return json;
  }
}

@JsonSerializable()
class HumanHeightArgs implements ToJson {
  String __typename;

  LengthUnit unit;

  HumanHeightArgs({
    this.unit,
  });

  /// Construct an empty `HumanHeightArgs`
  HumanHeightArgs.empty();

  /// Adds all fields from [other] to this `HumanHeightArgs`.
  ///
  /// If a field from [other] is already in this `HumanHeightArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant HumanHeightArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      unit = other.unit ?? unit;
    } else {
      unit ??= other.unit;
    }
  }

  /// Creates a copy of this `HumanHeightArgs` but with the given fields replaced with the new values.
  HumanHeightArgs copyWith({
    LengthUnit unit,
  }) {
    return HumanHeightArgs(
      unit: unit ?? this.unit,
    );
  }

  /// Creates a copy of this `HumanHeightArgs`
  HumanHeightArgs copy() => copyWith();

  factory HumanHeightArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static HumanHeightArgs deserializeFromJson(Map<String, dynamic> json) {
    HumanHeightArgs instance = _$HumanHeightArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(HumanHeightArgs instance) {
    Map<String, dynamic> json = _$HumanHeightArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class HumanFriendsConnectionArgs implements ToJson {
  String __typename;

  int first;
  String after;

  HumanFriendsConnectionArgs({
    this.first,
    this.after,
  });

  /// Construct an empty `HumanFriendsConnectionArgs`
  HumanFriendsConnectionArgs.empty();

  /// Adds all fields from [other] to this `HumanFriendsConnectionArgs`.
  ///
  /// If a field from [other] is already in this `HumanFriendsConnectionArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant HumanFriendsConnectionArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      first = other.first ?? first;
      after = other.after ?? after;
    } else {
      first ??= other.first;
      after ??= other.after;
    }
  }

  /// Creates a copy of this `HumanFriendsConnectionArgs` but with the given fields replaced with the new values.
  HumanFriendsConnectionArgs copyWith({
    int first,
    String after,
  }) {
    return HumanFriendsConnectionArgs(
      first: first ?? this.first,
      after: after ?? this.after,
    );
  }

  /// Creates a copy of this `HumanFriendsConnectionArgs`
  HumanFriendsConnectionArgs copy() => copyWith();

  factory HumanFriendsConnectionArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static HumanFriendsConnectionArgs deserializeFromJson(
      Map<String, dynamic> json) {
    HumanFriendsConnectionArgs instance =
        _$HumanFriendsConnectionArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      HumanFriendsConnectionArgs instance) {
    Map<String, dynamic> json = _$HumanFriendsConnectionArgsToJson(instance);

    return json;
  }
}

///
@JsonSerializable()
class Starship implements ToJson {
  String __typename;

  /// The ID of the starship
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  /// The name of the starship
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String name;

  /// Length of the starship, along the longest axis
  double length;
  List<double> coordinates;

  Starship({
    @required this.id,
    @required this.name,
    this.length,
    this.coordinates,
  });

  /// Construct an empty `Starship`
  Starship.empty();

  /// Adds all fields from [other] to this `Starship`.
  ///
  /// If a field from [other] is already in this `Starship`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Starship other, {
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

  /// Creates a copy of this `Starship` but with the given fields replaced with the new values.
  Starship copyWith({
    String id,
    String name,
    double length,
    List<double> coordinates,
  }) {
    return Starship(
      id: id ?? this.id,
      name: name ?? this.name,
      length: length ?? this.length,
      coordinates: coordinates ?? this.coordinates,
    );
  }

  /// Creates a copy of this `Starship`
  Starship copy() => copyWith();

  factory Starship.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Starship deserializeFromJson(Map<String, dynamic> json) {
    Starship instance = _$StarshipFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Starship instance) {
    Map<String, dynamic> json = _$StarshipToJson(instance);

    return json;
  }
}

@JsonSerializable()
class StarshipLengthArgs implements ToJson {
  String __typename;

  LengthUnit unit;

  StarshipLengthArgs({
    this.unit,
  });

  /// Construct an empty `StarshipLengthArgs`
  StarshipLengthArgs.empty();

  /// Adds all fields from [other] to this `StarshipLengthArgs`.
  ///
  /// If a field from [other] is already in this `StarshipLengthArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant StarshipLengthArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      unit = other.unit ?? unit;
    } else {
      unit ??= other.unit;
    }
  }

  /// Creates a copy of this `StarshipLengthArgs` but with the given fields replaced with the new values.
  StarshipLengthArgs copyWith({
    LengthUnit unit,
  }) {
    return StarshipLengthArgs(
      unit: unit ?? this.unit,
    );
  }

  /// Creates a copy of this `StarshipLengthArgs`
  StarshipLengthArgs copy() => copyWith();

  factory StarshipLengthArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static StarshipLengthArgs deserializeFromJson(Map<String, dynamic> json) {
    StarshipLengthArgs instance = _$StarshipLengthArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(StarshipLengthArgs instance) {
    Map<String, dynamic> json = _$StarshipLengthArgsToJson(instance);

    return json;
  }
}

/// An autonomous mechanical character in the Star Wars universe
@JsonSerializable()
class Droid implements ToJson, Character {
  String __typename;

  /// The ID of the droid
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String id;

  /// What others call this droid
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String name;

  /// This droid's friends, or an empty list if they have none
  List<Character> friends;

  /// The friends of the droid exposed as a connection with edges
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  FriendsConnection friendsConnection;

  /// The movies this droid appears in
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  List<Episode> appearsIn;

  /// This droid's primary function
  String primaryFunction;

  Droid({
    @required this.id,
    @required this.name,
    this.friends,
    @required this.friendsConnection,
    @required this.appearsIn,
    this.primaryFunction,
  });

  /// Construct an empty `Droid`
  Droid.empty();

  /// Adds all fields from [other] to this `Droid`.
  ///
  /// If a field from [other] is already in this `Droid`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Droid other, {
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

  /// Creates a copy of this `Droid` but with the given fields replaced with the new values.
  Droid copyWith({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
    String primaryFunction,
  }) {
    return Droid(
      id: id ?? this.id,
      name: name ?? this.name,
      friends: friends ?? this.friends,
      friendsConnection: friendsConnection ?? this.friendsConnection,
      appearsIn: appearsIn ?? this.appearsIn,
      primaryFunction: primaryFunction ?? this.primaryFunction,
    );
  }

  /// Creates a copy of this `Droid`
  Droid copy() => copyWith();

  factory Droid.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Droid deserializeFromJson(Map<String, dynamic> json) {
    Droid instance = _$DroidFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Droid instance) {
    Map<String, dynamic> json = _$DroidToJson(instance);

    return json;
  }
}

@JsonSerializable()
class DroidFriendsConnectionArgs implements ToJson {
  String __typename;

  int first;
  String after;

  DroidFriendsConnectionArgs({
    this.first,
    this.after,
  });

  /// Construct an empty `DroidFriendsConnectionArgs`
  DroidFriendsConnectionArgs.empty();

  /// Adds all fields from [other] to this `DroidFriendsConnectionArgs`.
  ///
  /// If a field from [other] is already in this `DroidFriendsConnectionArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant DroidFriendsConnectionArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      first = other.first ?? first;
      after = other.after ?? after;
    } else {
      first ??= other.first;
      after ??= other.after;
    }
  }

  /// Creates a copy of this `DroidFriendsConnectionArgs` but with the given fields replaced with the new values.
  DroidFriendsConnectionArgs copyWith({
    int first,
    String after,
  }) {
    return DroidFriendsConnectionArgs(
      first: first ?? this.first,
      after: after ?? this.after,
    );
  }

  /// Creates a copy of this `DroidFriendsConnectionArgs`
  DroidFriendsConnectionArgs copy() => copyWith();

  factory DroidFriendsConnectionArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static DroidFriendsConnectionArgs deserializeFromJson(
      Map<String, dynamic> json) {
    DroidFriendsConnectionArgs instance =
        _$DroidFriendsConnectionArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      DroidFriendsConnectionArgs instance) {
    Map<String, dynamic> json = _$DroidFriendsConnectionArgsToJson(instance);

    return json;
  }
}

/// The mutation type, represents all updates we can make to our data
@JsonSerializable()
class Mutation implements ToJson {
  String __typename;

  Review createReview;

  Mutation({
    this.createReview,
  });

  /// Construct an empty `Mutation`
  Mutation.empty();

  /// Adds all fields from [other] to this `Mutation`.
  ///
  /// If a field from [other] is already in this `Mutation`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Mutation other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      createReview = other.createReview ?? createReview;
    } else {
      createReview ??= other.createReview;
    }
  }

  /// Creates a copy of this `Mutation` but with the given fields replaced with the new values.
  Mutation copyWith({
    Review createReview,
  }) {
    return Mutation(
      createReview: createReview ?? this.createReview,
    );
  }

  /// Creates a copy of this `Mutation`
  Mutation copy() => copyWith();

  factory Mutation.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Mutation deserializeFromJson(Map<String, dynamic> json) {
    Mutation instance = _$MutationFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Mutation instance) {
    Map<String, dynamic> json = _$MutationToJson(instance);

    return json;
  }
}

@JsonSerializable()
class MutationCreateReviewArgs implements ToJson {
  String __typename;

  Episode episode;
  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  ReviewInput review;

  MutationCreateReviewArgs({
    this.episode,
    @required this.review,
  });

  /// Construct an empty `MutationCreateReviewArgs`
  MutationCreateReviewArgs.empty();

  /// Adds all fields from [other] to this `MutationCreateReviewArgs`.
  ///
  /// If a field from [other] is already in this `MutationCreateReviewArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant MutationCreateReviewArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      episode = other.episode ?? episode;
      review = other.review ?? review;
    } else {
      episode ??= other.episode;
      review ??= other.review;
    }
  }

  /// Creates a copy of this `MutationCreateReviewArgs` but with the given fields replaced with the new values.
  MutationCreateReviewArgs copyWith({
    Episode episode,
    ReviewInput review,
  }) {
    return MutationCreateReviewArgs(
      episode: episode ?? this.episode,
      review: review ?? this.review,
    );
  }

  /// Creates a copy of this `MutationCreateReviewArgs`
  MutationCreateReviewArgs copy() => copyWith();

  factory MutationCreateReviewArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static MutationCreateReviewArgs deserializeFromJson(
      Map<String, dynamic> json) {
    MutationCreateReviewArgs instance =
        _$MutationCreateReviewArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      MutationCreateReviewArgs instance) {
    Map<String, dynamic> json = _$MutationCreateReviewArgsToJson(instance);

    return json;
  }
}

/// The subscription type, represents all subscriptions we can make to our data
@JsonSerializable()
class Subscription implements ToJson {
  String __typename;

  Review reviewAdded;

  Subscription({
    this.reviewAdded,
  });

  /// Construct an empty `Subscription`
  Subscription.empty();

  /// Adds all fields from [other] to this `Subscription`.
  ///
  /// If a field from [other] is already in this `Subscription`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant Subscription other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      reviewAdded = other.reviewAdded ?? reviewAdded;
    } else {
      reviewAdded ??= other.reviewAdded;
    }
  }

  /// Creates a copy of this `Subscription` but with the given fields replaced with the new values.
  Subscription copyWith({
    Review reviewAdded,
  }) {
    return Subscription(
      reviewAdded: reviewAdded ?? this.reviewAdded,
    );
  }

  /// Creates a copy of this `Subscription`
  Subscription copy() => copyWith();

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static Subscription deserializeFromJson(Map<String, dynamic> json) {
    Subscription instance = _$SubscriptionFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(Subscription instance) {
    Map<String, dynamic> json = _$SubscriptionToJson(instance);

    return json;
  }
}

@JsonSerializable()
class SubscriptionReviewAddedArgs implements ToJson {
  String __typename;

  Episode episode;

  SubscriptionReviewAddedArgs({
    this.episode,
  });

  /// Construct an empty `SubscriptionReviewAddedArgs`
  SubscriptionReviewAddedArgs.empty();

  /// Adds all fields from [other] to this `SubscriptionReviewAddedArgs`.
  ///
  /// If a field from [other] is already in this `SubscriptionReviewAddedArgs`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant SubscriptionReviewAddedArgs other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      episode = other.episode ?? episode;
    } else {
      episode ??= other.episode;
    }
  }

  /// Creates a copy of this `SubscriptionReviewAddedArgs` but with the given fields replaced with the new values.
  SubscriptionReviewAddedArgs copyWith({
    Episode episode,
  }) {
    return SubscriptionReviewAddedArgs(
      episode: episode ?? this.episode,
    );
  }

  /// Creates a copy of this `SubscriptionReviewAddedArgs`
  SubscriptionReviewAddedArgs copy() => copyWith();

  factory SubscriptionReviewAddedArgs.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static SubscriptionReviewAddedArgs deserializeFromJson(
      Map<String, dynamic> json) {
    SubscriptionReviewAddedArgs instance =
        _$SubscriptionReviewAddedArgsFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      SubscriptionReviewAddedArgs instance) {
    Map<String, dynamic> json = _$SubscriptionReviewAddedArgsToJson(instance);

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeVariables implements ToJson {
  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  Episode ep;

  HeroForEpisodeVariables({
    @required this.ep,
  });

  /// Construct an empty `HeroForEpisodeVariables`
  HeroForEpisodeVariables.empty();

  /// Adds all fields from [other] to this `HeroForEpisodeVariables`.
  ///
  /// If a field from [other] is already in this `HeroForEpisodeVariables`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant HeroForEpisodeVariables other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      ep = other.ep ?? ep;
    } else {
      ep ??= other.ep;
    }
  }

  /// Creates a copy of this `HeroForEpisodeVariables` but with the given fields replaced with the new values.
  HeroForEpisodeVariables copyWith({
    Episode ep,
  }) {
    return HeroForEpisodeVariables(
      ep: ep ?? this.ep,
    );
  }

  /// Creates a copy of this `HeroForEpisodeVariables`
  HeroForEpisodeVariables copy() => copyWith();

  factory HeroForEpisodeVariables.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static HeroForEpisodeVariables deserializeFromJson(
      Map<String, dynamic> json) {
    HeroForEpisodeVariables instance = _$HeroForEpisodeVariablesFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      HeroForEpisodeVariables instance) {
    Map<String, dynamic> json = _$HeroForEpisodeVariablesToJson(instance);

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeHumanInlineFragment implements ToJson {
  static final String typeName = "Human";

  String __typename;

  double height;
  String homePlanet;

  HeroForEpisodeHumanInlineFragment({
    this.height,
    this.homePlanet,
  });

  /// Construct an empty `HeroForEpisodeHumanInlineFragment`
  HeroForEpisodeHumanInlineFragment.empty();

  /// Adds all fields from [other] to this `HeroForEpisodeHumanInlineFragment`.
  ///
  /// If a field from [other] is already in this `HeroForEpisodeHumanInlineFragment`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant HeroForEpisodeHumanInlineFragment other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      height = other.height ?? height;
      homePlanet = other.homePlanet ?? homePlanet;
    } else {
      height ??= other.height;
      homePlanet ??= other.homePlanet;
    }
  }

  /// Creates a copy of this `HeroForEpisodeHumanInlineFragment` but with the given fields replaced with the new values.
  HeroForEpisodeHumanInlineFragment copyWith({
    double height,
    String homePlanet,
  }) {
    return HeroForEpisodeHumanInlineFragment(
      height: height ?? this.height,
      homePlanet: homePlanet ?? this.homePlanet,
    );
  }

  /// Creates a copy of this `HeroForEpisodeHumanInlineFragment`
  HeroForEpisodeHumanInlineFragment copy() => copyWith();

  factory HeroForEpisodeHumanInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static HeroForEpisodeHumanInlineFragment deserializeFromJson(
      Map<String, dynamic> json) {
    HeroForEpisodeHumanInlineFragment instance =
        _$HeroForEpisodeHumanInlineFragmentFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      HeroForEpisodeHumanInlineFragment instance) {
    Map<String, dynamic> json =
        _$HeroForEpisodeHumanInlineFragmentToJson(instance);

    json['__typename'] = instance.__typename ?? typeName;
    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeDroidInlineFragment implements ToJson {
  static final String typeName = "Droid";

  String __typename;

  String primaryFunction;

  HeroForEpisodeDroidInlineFragment({
    this.primaryFunction,
  });

  /// Construct an empty `HeroForEpisodeDroidInlineFragment`
  HeroForEpisodeDroidInlineFragment.empty();

  /// Adds all fields from [other] to this `HeroForEpisodeDroidInlineFragment`.
  ///
  /// If a field from [other] is already in this `HeroForEpisodeDroidInlineFragment`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant HeroForEpisodeDroidInlineFragment other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      primaryFunction = other.primaryFunction ?? primaryFunction;
    } else {
      primaryFunction ??= other.primaryFunction;
    }
  }

  /// Creates a copy of this `HeroForEpisodeDroidInlineFragment` but with the given fields replaced with the new values.
  HeroForEpisodeDroidInlineFragment copyWith({
    String primaryFunction,
  }) {
    return HeroForEpisodeDroidInlineFragment(
      primaryFunction: primaryFunction ?? this.primaryFunction,
    );
  }

  /// Creates a copy of this `HeroForEpisodeDroidInlineFragment`
  HeroForEpisodeDroidInlineFragment copy() => copyWith();

  factory HeroForEpisodeDroidInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static HeroForEpisodeDroidInlineFragment deserializeFromJson(
      Map<String, dynamic> json) {
    HeroForEpisodeDroidInlineFragment instance =
        _$HeroForEpisodeDroidInlineFragmentFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(
      HeroForEpisodeDroidInlineFragment instance) {
    Map<String, dynamic> json =
        _$HeroForEpisodeDroidInlineFragmentToJson(instance);

    json['__typename'] = instance.__typename ?? typeName;
    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeHero implements ToJson {
  static final String typeName = "Character";

  String __typename;

  @JsonKey(
    required: true,
    disallowNullValue: true,
  )
  String name;

  @JsonKey(ignore: true)
  HeroForEpisodeDroidInlineFragment droidInlineFragment;
  @JsonKey(ignore: true)
  HeroForEpisodeHumanInlineFragment humanInlineFragment;

  HeroForEpisodeHero({
    @required this.name,
  });

  /// Construct an empty `HeroForEpisodeHero`
  HeroForEpisodeHero.empty();

  /// Adds all fields from [other] to this `HeroForEpisodeHero`.
  ///
  /// If a field from [other] is already in this `HeroForEpisodeHero`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant HeroForEpisodeHero other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      name = other.name ?? name;
    } else {
      name ??= other.name;
    }
  }

  /// Creates a copy of this `HeroForEpisodeHero` but with the given fields replaced with the new values.
  HeroForEpisodeHero copyWith({
    String name,
  }) {
    return HeroForEpisodeHero(
      name: name ?? this.name,
    );
  }

  /// Creates a copy of this `HeroForEpisodeHero`
  HeroForEpisodeHero copy() => copyWith();

  factory HeroForEpisodeHero.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static HeroForEpisodeHero deserializeFromJson(Map<String, dynamic> json) {
    HeroForEpisodeHero instance = _$HeroForEpisodeHeroFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    if (instance.__typename == null ||
        instance.__typename == HeroForEpisodeDroidInlineFragment.typeName) {
      instance.droidInlineFragment =
          HeroForEpisodeDroidInlineFragment.fromJson(json);
    }
    if (instance.__typename == null ||
        instance.__typename == HeroForEpisodeHumanInlineFragment.typeName) {
      instance.humanInlineFragment =
          HeroForEpisodeHumanInlineFragment.fromJson(json);
    }
    return instance;
  }

  static Map<String, dynamic> serializeToJson(HeroForEpisodeHero instance) {
    Map<String, dynamic> json = _$HeroForEpisodeHeroToJson(instance);
    if (instance.droidInlineFragment != null) {
      json.addAll(instance.droidInlineFragment.toJson());
    }
    if (instance.humanInlineFragment != null) {
      json.addAll(instance.humanInlineFragment.toJson());
    }

    json['__typename'] = instance.__typename ?? typeName;
    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeQuery implements ToJson {
  static final String typeName = "HeroForEpisodeQuery";

  String __typename;

  HeroForEpisodeHero hero;

  HeroForEpisodeQuery({
    this.hero,
  });

  /// Construct an empty `HeroForEpisodeQuery`
  HeroForEpisodeQuery.empty();

  /// Adds all fields from [other] to this `HeroForEpisodeQuery`.
  ///
  /// If a field from [other] is already in this `HeroForEpisodeQuery`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(
    covariant HeroForEpisodeQuery other, {
    bool overwrite = true,
  }) {
    assert(other != null, "Cannot add all from null into $this");
    if (overwrite != null && overwrite) {
      hero = other.hero ?? hero;
    } else {
      hero ??= other.hero;
    }
  }

  /// Creates a copy of this `HeroForEpisodeQuery` but with the given fields replaced with the new values.
  HeroForEpisodeQuery copyWith({
    HeroForEpisodeHero hero,
  }) {
    return HeroForEpisodeQuery(
      hero: hero ?? this.hero,
    );
  }

  /// Creates a copy of this `HeroForEpisodeQuery`
  HeroForEpisodeQuery copy() => copyWith();

  factory HeroForEpisodeQuery.fromJson(Map<String, dynamic> json) =>
      deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static HeroForEpisodeQuery deserializeFromJson(Map<String, dynamic> json) {
    HeroForEpisodeQuery instance = _$HeroForEpisodeQueryFromJson(json);
    // for handling inline fragment logic
    instance.__typename = json['__typename'] as String;

    return instance;
  }

  static Map<String, dynamic> serializeToJson(HeroForEpisodeQuery instance) {
    Map<String, dynamic> json = _$HeroForEpisodeQueryToJson(instance);

    json['__typename'] = instance.__typename ?? typeName;
    return json;
  }
}
