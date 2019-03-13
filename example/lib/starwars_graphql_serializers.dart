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

  ReviewInput.empty();

  static I _assign<I extends ReviewInput>(
    I into,
    ReviewInput source,
  ) {
    into.stars = source.stars;
    into.commentary = source.commentary;
    into.favorite_color = source.favorite_color;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends ReviewInput>(I into, ReviewInput source,
      [List<ReviewInput> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [ReviewInput]
  static ReviewInput copy(ReviewInput source) {
    return ReviewInput(
      stars: source.stars,
      commentary: source.commentary,
      favorite_color: source.favorite_color,
    );
  }

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

  int red;
  int green;
  int blue;

  ColorInput({
    @required this.red,
    @required this.green,
    @required this.blue,
  });

  ColorInput.empty();

  static I _assign<I extends ColorInput>(
    I into,
    ColorInput source,
  ) {
    into.red = source.red;
    into.green = source.green;
    into.blue = source.blue;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends ColorInput>(I into, ColorInput source,
      [List<ColorInput> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [ColorInput]
  static ColorInput copy(ColorInput source) {
    return ColorInput(
      red: source.red,
      green: source.green,
      blue: source.blue,
    );
  }

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
  String id;

  /// The name of the character
  String name;

  /// The friends of the character, or an empty list if they have none
  List<Character> friends;

  /// The friends of the character exposed as a connection with edges
  FriendsConnection friendsConnection;

  /// The movies this character appears in
  List<Episode> appearsIn;

  Character({
    @required this.id,
    @required this.name,
    this.friends,
    @required this.friendsConnection,
    @required this.appearsIn,
  });

  Character.empty();

  static I _assign<I extends Character>(
    I into,
    Character source,
  ) {
    into.id = source.id;
    into.name = source.name;
    into.friends = source.friends;
    into.friendsConnection = source.friendsConnection;
    into.appearsIn = source.appearsIn;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Character>(I into, Character source,
      [List<Character> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Character]
  static Character copy(Character source) {
    return Character(
      id: source.id,
      name: source.name,
      friends: source.friends,
      friendsConnection: source.friendsConnection,
      appearsIn: source.appearsIn,
    );
  }

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

  CharacterFriendsConnectionArgs.empty();

  static I _assign<I extends CharacterFriendsConnectionArgs>(
    I into,
    CharacterFriendsConnectionArgs source,
  ) {
    into.first = source.first;
    into.after = source.after;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends CharacterFriendsConnectionArgs>(
      I into, CharacterFriendsConnectionArgs source,
      [List<CharacterFriendsConnectionArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [CharacterFriendsConnectionArgs]
  static CharacterFriendsConnectionArgs copy(
      CharacterFriendsConnectionArgs source) {
    return CharacterFriendsConnectionArgs(
      first: source.first,
      after: source.after,
    );
  }

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

  Query.empty();

  static I _assign<I extends Query>(
    I into,
    Query source,
  ) {
    into.hero = source.hero;
    into.reviews = source.reviews;
    into.search = source.search;
    into.character = source.character;
    into.droid = source.droid;
    into.human = source.human;
    into.starship = source.starship;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Query>(I into, Query source, [List<Query> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Query]
  static Query copy(Query source) {
    return Query(
      hero: source.hero,
      reviews: source.reviews,
      search: source.search,
      character: source.character,
      droid: source.droid,
      human: source.human,
      starship: source.starship,
    );
  }

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

  QueryHeroArgs.empty();

  static I _assign<I extends QueryHeroArgs>(
    I into,
    QueryHeroArgs source,
  ) {
    into.episode = source.episode;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryHeroArgs>(I into, QueryHeroArgs source,
      [List<QueryHeroArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [QueryHeroArgs]
  static QueryHeroArgs copy(QueryHeroArgs source) {
    return QueryHeroArgs(
      episode: source.episode,
    );
  }

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

  Episode episode;

  QueryReviewsArgs({
    @required this.episode,
  });

  QueryReviewsArgs.empty();

  static I _assign<I extends QueryReviewsArgs>(
    I into,
    QueryReviewsArgs source,
  ) {
    into.episode = source.episode;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryReviewsArgs>(I into, QueryReviewsArgs source,
      [List<QueryReviewsArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [QueryReviewsArgs]
  static QueryReviewsArgs copy(QueryReviewsArgs source) {
    return QueryReviewsArgs(
      episode: source.episode,
    );
  }

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

  QuerySearchArgs.empty();

  static I _assign<I extends QuerySearchArgs>(
    I into,
    QuerySearchArgs source,
  ) {
    into.text = source.text;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QuerySearchArgs>(I into, QuerySearchArgs source,
      [List<QuerySearchArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [QuerySearchArgs]
  static QuerySearchArgs copy(QuerySearchArgs source) {
    return QuerySearchArgs(
      text: source.text,
    );
  }

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

  String id;

  QueryCharacterArgs({
    @required this.id,
  });

  QueryCharacterArgs.empty();

  static I _assign<I extends QueryCharacterArgs>(
    I into,
    QueryCharacterArgs source,
  ) {
    into.id = source.id;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryCharacterArgs>(
      I into, QueryCharacterArgs source,
      [List<QueryCharacterArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [QueryCharacterArgs]
  static QueryCharacterArgs copy(QueryCharacterArgs source) {
    return QueryCharacterArgs(
      id: source.id,
    );
  }

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

  String id;

  QueryDroidArgs({
    @required this.id,
  });

  QueryDroidArgs.empty();

  static I _assign<I extends QueryDroidArgs>(
    I into,
    QueryDroidArgs source,
  ) {
    into.id = source.id;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryDroidArgs>(I into, QueryDroidArgs source,
      [List<QueryDroidArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [QueryDroidArgs]
  static QueryDroidArgs copy(QueryDroidArgs source) {
    return QueryDroidArgs(
      id: source.id,
    );
  }

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

  String id;

  QueryHumanArgs({
    @required this.id,
  });

  QueryHumanArgs.empty();

  static I _assign<I extends QueryHumanArgs>(
    I into,
    QueryHumanArgs source,
  ) {
    into.id = source.id;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryHumanArgs>(I into, QueryHumanArgs source,
      [List<QueryHumanArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [QueryHumanArgs]
  static QueryHumanArgs copy(QueryHumanArgs source) {
    return QueryHumanArgs(
      id: source.id,
    );
  }

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

  String id;

  QueryStarshipArgs({
    @required this.id,
  });

  QueryStarshipArgs.empty();

  static I _assign<I extends QueryStarshipArgs>(
    I into,
    QueryStarshipArgs source,
  ) {
    into.id = source.id;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryStarshipArgs>(I into, QueryStarshipArgs source,
      [List<QueryStarshipArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [QueryStarshipArgs]
  static QueryStarshipArgs copy(QueryStarshipArgs source) {
    return QueryStarshipArgs(
      id: source.id,
    );
  }

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
  PageInfo pageInfo;

  FriendsConnection({
    this.totalCount,
    this.edges,
    this.friends,
    @required this.pageInfo,
  });

  FriendsConnection.empty();

  static I _assign<I extends FriendsConnection>(
    I into,
    FriendsConnection source,
  ) {
    into.totalCount = source.totalCount;
    into.edges = source.edges;
    into.friends = source.friends;
    into.pageInfo = source.pageInfo;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends FriendsConnection>(I into, FriendsConnection source,
      [List<FriendsConnection> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [FriendsConnection]
  static FriendsConnection copy(FriendsConnection source) {
    return FriendsConnection(
      totalCount: source.totalCount,
      edges: source.edges,
      friends: source.friends,
      pageInfo: source.pageInfo,
    );
  }

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
  String cursor;

  /// The character represented by this friendship edge
  Character node;

  FriendsEdge({
    @required this.cursor,
    this.node,
  });

  FriendsEdge.empty();

  static I _assign<I extends FriendsEdge>(
    I into,
    FriendsEdge source,
  ) {
    into.cursor = source.cursor;
    into.node = source.node;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends FriendsEdge>(I into, FriendsEdge source,
      [List<FriendsEdge> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [FriendsEdge]
  static FriendsEdge copy(FriendsEdge source) {
    return FriendsEdge(
      cursor: source.cursor,
      node: source.node,
    );
  }

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
  bool hasNextPage;

  PageInfo({
    this.startCursor,
    this.endCursor,
    @required this.hasNextPage,
  });

  PageInfo.empty();

  static I _assign<I extends PageInfo>(
    I into,
    PageInfo source,
  ) {
    into.startCursor = source.startCursor;
    into.endCursor = source.endCursor;
    into.hasNextPage = source.hasNextPage;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends PageInfo>(I into, PageInfo source,
      [List<PageInfo> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [PageInfo]
  static PageInfo copy(PageInfo source) {
    return PageInfo(
      startCursor: source.startCursor,
      endCursor: source.endCursor,
      hasNextPage: source.hasNextPage,
    );
  }

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
  int stars;

  /// Comment about the movie
  String commentary;

  Review({
    this.episode,
    @required this.stars,
    this.commentary,
  });

  Review.empty();

  static I _assign<I extends Review>(
    I into,
    Review source,
  ) {
    into.episode = source.episode;
    into.stars = source.stars;
    into.commentary = source.commentary;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Review>(I into, Review source,
      [List<Review> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Review]
  static Review copy(Review source) {
    return Review(
      episode: source.episode,
      stars: source.stars,
      commentary: source.commentary,
    );
  }

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

  Human.empty();

  static I _assign<I extends Human>(
    I into,
    Human source,
  ) {
    into.id = source.id;
    into.name = source.name;
    into.homePlanet = source.homePlanet;
    into.height = source.height;
    into.mass = source.mass;
    into.friends = source.friends;
    into.friendsConnection = source.friendsConnection;
    into.appearsIn = source.appearsIn;
    into.starships = source.starships;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Human>(I into, Human source, [List<Human> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Human]
  static Human copy(Human source) {
    return Human(
      id: source.id,
      name: source.name,
      homePlanet: source.homePlanet,
      height: source.height,
      mass: source.mass,
      friends: source.friends,
      friendsConnection: source.friendsConnection,
      appearsIn: source.appearsIn,
      starships: source.starships,
    );
  }

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

  HumanHeightArgs.empty();

  static I _assign<I extends HumanHeightArgs>(
    I into,
    HumanHeightArgs source,
  ) {
    into.unit = source.unit;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends HumanHeightArgs>(I into, HumanHeightArgs source,
      [List<HumanHeightArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [HumanHeightArgs]
  static HumanHeightArgs copy(HumanHeightArgs source) {
    return HumanHeightArgs(
      unit: source.unit,
    );
  }

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

  HumanFriendsConnectionArgs.empty();

  static I _assign<I extends HumanFriendsConnectionArgs>(
    I into,
    HumanFriendsConnectionArgs source,
  ) {
    into.first = source.first;
    into.after = source.after;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends HumanFriendsConnectionArgs>(
      I into, HumanFriendsConnectionArgs source,
      [List<HumanFriendsConnectionArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [HumanFriendsConnectionArgs]
  static HumanFriendsConnectionArgs copy(HumanFriendsConnectionArgs source) {
    return HumanFriendsConnectionArgs(
      first: source.first,
      after: source.after,
    );
  }

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
  String id;

  /// The name of the starship
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

  Starship.empty();

  static I _assign<I extends Starship>(
    I into,
    Starship source,
  ) {
    into.id = source.id;
    into.name = source.name;
    into.length = source.length;
    into.coordinates = source.coordinates;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Starship>(I into, Starship source,
      [List<Starship> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Starship]
  static Starship copy(Starship source) {
    return Starship(
      id: source.id,
      name: source.name,
      length: source.length,
      coordinates: source.coordinates,
    );
  }

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

  StarshipLengthArgs.empty();

  static I _assign<I extends StarshipLengthArgs>(
    I into,
    StarshipLengthArgs source,
  ) {
    into.unit = source.unit;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends StarshipLengthArgs>(
      I into, StarshipLengthArgs source,
      [List<StarshipLengthArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [StarshipLengthArgs]
  static StarshipLengthArgs copy(StarshipLengthArgs source) {
    return StarshipLengthArgs(
      unit: source.unit,
    );
  }

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

  Droid({
    @required this.id,
    @required this.name,
    this.friends,
    @required this.friendsConnection,
    @required this.appearsIn,
    this.primaryFunction,
  });

  Droid.empty();

  static I _assign<I extends Droid>(
    I into,
    Droid source,
  ) {
    into.id = source.id;
    into.name = source.name;
    into.friends = source.friends;
    into.friendsConnection = source.friendsConnection;
    into.appearsIn = source.appearsIn;
    into.primaryFunction = source.primaryFunction;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Droid>(I into, Droid source, [List<Droid> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Droid]
  static Droid copy(Droid source) {
    return Droid(
      id: source.id,
      name: source.name,
      friends: source.friends,
      friendsConnection: source.friendsConnection,
      appearsIn: source.appearsIn,
      primaryFunction: source.primaryFunction,
    );
  }

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

  DroidFriendsConnectionArgs.empty();

  static I _assign<I extends DroidFriendsConnectionArgs>(
    I into,
    DroidFriendsConnectionArgs source,
  ) {
    into.first = source.first;
    into.after = source.after;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends DroidFriendsConnectionArgs>(
      I into, DroidFriendsConnectionArgs source,
      [List<DroidFriendsConnectionArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [DroidFriendsConnectionArgs]
  static DroidFriendsConnectionArgs copy(DroidFriendsConnectionArgs source) {
    return DroidFriendsConnectionArgs(
      first: source.first,
      after: source.after,
    );
  }

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

  Mutation.empty();

  static I _assign<I extends Mutation>(
    I into,
    Mutation source,
  ) {
    into.createReview = source.createReview;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Mutation>(I into, Mutation source,
      [List<Mutation> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Mutation]
  static Mutation copy(Mutation source) {
    return Mutation(
      createReview: source.createReview,
    );
  }

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
  ReviewInput review;

  MutationCreateReviewArgs({
    this.episode,
    @required this.review,
  });

  MutationCreateReviewArgs.empty();

  static I _assign<I extends MutationCreateReviewArgs>(
    I into,
    MutationCreateReviewArgs source,
  ) {
    into.episode = source.episode;
    into.review = source.review;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MutationCreateReviewArgs>(
      I into, MutationCreateReviewArgs source,
      [List<MutationCreateReviewArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [MutationCreateReviewArgs]
  static MutationCreateReviewArgs copy(MutationCreateReviewArgs source) {
    return MutationCreateReviewArgs(
      episode: source.episode,
      review: source.review,
    );
  }

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

  Subscription.empty();

  static I _assign<I extends Subscription>(
    I into,
    Subscription source,
  ) {
    into.reviewAdded = source.reviewAdded;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Subscription>(I into, Subscription source,
      [List<Subscription> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [Subscription]
  static Subscription copy(Subscription source) {
    return Subscription(
      reviewAdded: source.reviewAdded,
    );
  }

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

  SubscriptionReviewAddedArgs.empty();

  static I _assign<I extends SubscriptionReviewAddedArgs>(
    I into,
    SubscriptionReviewAddedArgs source,
  ) {
    into.episode = source.episode;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends SubscriptionReviewAddedArgs>(
      I into, SubscriptionReviewAddedArgs source,
      [List<SubscriptionReviewAddedArgs> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [SubscriptionReviewAddedArgs]
  static SubscriptionReviewAddedArgs copy(SubscriptionReviewAddedArgs source) {
    return SubscriptionReviewAddedArgs(
      episode: source.episode,
    );
  }

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

  Episode ep;

  HeroForEpisodeVariables({
    @required this.ep,
  });

  HeroForEpisodeVariables.empty();

  static I _assign<I extends HeroForEpisodeVariables>(
    I into,
    HeroForEpisodeVariables source,
  ) {
    into.ep = source.ep;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends HeroForEpisodeVariables>(
      I into, HeroForEpisodeVariables source,
      [List<HeroForEpisodeVariables> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [HeroForEpisodeVariables]
  static HeroForEpisodeVariables copy(HeroForEpisodeVariables source) {
    return HeroForEpisodeVariables(
      ep: source.ep,
    );
  }

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

  HeroForEpisodeHumanInlineFragment.empty();

  static I _assign<I extends HeroForEpisodeHumanInlineFragment>(
    I into,
    HeroForEpisodeHumanInlineFragment source,
  ) {
    into.height = source.height;
    into.homePlanet = source.homePlanet;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends HeroForEpisodeHumanInlineFragment>(
      I into, HeroForEpisodeHumanInlineFragment source,
      [List<HeroForEpisodeHumanInlineFragment> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [HeroForEpisodeHumanInlineFragment]
  static HeroForEpisodeHumanInlineFragment copy(
      HeroForEpisodeHumanInlineFragment source) {
    return HeroForEpisodeHumanInlineFragment(
      height: source.height,
      homePlanet: source.homePlanet,
    );
  }

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

  HeroForEpisodeDroidInlineFragment.empty();

  static I _assign<I extends HeroForEpisodeDroidInlineFragment>(
    I into,
    HeroForEpisodeDroidInlineFragment source,
  ) {
    into.primaryFunction = source.primaryFunction;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends HeroForEpisodeDroidInlineFragment>(
      I into, HeroForEpisodeDroidInlineFragment source,
      [List<HeroForEpisodeDroidInlineFragment> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [HeroForEpisodeDroidInlineFragment]
  static HeroForEpisodeDroidInlineFragment copy(
      HeroForEpisodeDroidInlineFragment source) {
    return HeroForEpisodeDroidInlineFragment(
      primaryFunction: source.primaryFunction,
    );
  }

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

  String name;

  @JsonKey(ignore: true)
  HeroForEpisodeDroidInlineFragment droidInlineFragment;
  @JsonKey(ignore: true)
  HeroForEpisodeHumanInlineFragment humanInlineFragment;

  HeroForEpisodeHero({
    @required this.name,
  });

  HeroForEpisodeHero.empty();

  static I _assign<I extends HeroForEpisodeHero>(
    I into,
    HeroForEpisodeHero source,
  ) {
    into.name = source.name;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends HeroForEpisodeHero>(
      I into, HeroForEpisodeHero source,
      [List<HeroForEpisodeHero> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [HeroForEpisodeHero]
  static HeroForEpisodeHero copy(HeroForEpisodeHero source) {
    return HeroForEpisodeHero(
      name: source.name,
    );
  }

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

  HeroForEpisodeQuery.empty();

  static I _assign<I extends HeroForEpisodeQuery>(
    I into,
    HeroForEpisodeQuery source,
  ) {
    into.hero = source.hero;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends HeroForEpisodeQuery>(
      I into, HeroForEpisodeQuery source,
      [List<HeroForEpisodeQuery> vargs]) {
    into = _assign(into, source);
    if (vargs != null) {
      vargs.forEach((varg) {
        into = _assign(into, varg);
      });
    }
    return into;
  }

  /// Copies and downcasts any inheriting [source] into a new [HeroForEpisodeQuery]
  static HeroForEpisodeQuery copy(HeroForEpisodeQuery source) {
    return HeroForEpisodeQuery(
      hero: source.hero,
    );
  }

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
