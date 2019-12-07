// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';



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
  static const possibleTypes = const {
Human,
Droid,
Starship  };

  Human human;
  Droid droid;
  Starship starship;


  SearchResult.empty();


  ToJson get value => (
human ??
droid ??
starship   ) as ToJson;

  factory SearchResult.fromJson(Map<String, dynamic> json)
     => deserializeFromJson(json);

  Map<String, dynamic> toJson() => value.toJson();


  static  deserializeFromJson(Map<String, dynamic> json){
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

  static Map<String, dynamic> serializeToJson(SearchResult instance) => instance.value.toJson();

}


/* Input Types */

/// The input object sent when someone is creating a new review
class ReviewInput implements ToJson {
  static final String typeName = "";

  
  /// 0-5 stars
  @JsonKey(required: true, disallowNullValue: true,)
    int _stars;
  /// Comment about the movie, optional
  String _commentary;
  /// Favorite color, optional
  ColorInput _favoritecolor;

  ReviewInput({
    
        @JsonKey(required: true, disallowNullValue: true,)
    int stars,
    
        String commentary,
    
        ColorInput favoritecolor,
    
  }):
    _stars = stars '
        _commentary = commentary '
        _favoritecolor = favoritecolor ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_stars == null){
            missingFields.add(_stars);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}




/// The input object sent when passing in a color
class ColorInput implements ToJson {
  static final String typeName = "";

  
    @JsonKey(required: true, disallowNullValue: true,)
    int _red;
    @JsonKey(required: true, disallowNullValue: true,)
    int _green;
    @JsonKey(required: true, disallowNullValue: true,)
    int _blue;

  ColorInput({
    
        @JsonKey(required: true, disallowNullValue: true,)
    int red,
    
        @JsonKey(required: true, disallowNullValue: true,)
    int green,
    
        @JsonKey(required: true, disallowNullValue: true,)
    int blue,
    
  }):
    _red = red '
        _green = green '
        _blue = blue ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_red == null){
            missingFields.add(_red);
        }
        if (_green == null){
            missingFields.add(_green);
        }
        if (_blue == null){
            missingFields.add(_blue);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}




/* Interfaces */

/// A character from the Star Wars universe
class Character implements ToJson {
  static final String typeName = "";

  
  /// The ID of the character
  @JsonKey(required: true, disallowNullValue: true,)
    String _id;
  /// The name of the character
  @JsonKey(required: true, disallowNullValue: true,)
    String _name;
  /// The friends of the character, or an empty list if they have none
  List<Character> _friends;
  /// The friends of the character exposed as a connection with edges
  @JsonKey(required: true, disallowNullValue: true,)
    FriendsConnection _friendsConnection;
  /// The movies this character appears in
  @JsonKey(required: true, disallowNullValue: true,)
    List<Episode> _appearsIn;

  Character({
    
        @JsonKey(required: true, disallowNullValue: true,)
    String id,
    
        @JsonKey(required: true, disallowNullValue: true,)
    String name,
    
        List<Character> friends,
    
        @JsonKey(required: true, disallowNullValue: true,)
    FriendsConnection friendsConnection,
    
        @JsonKey(required: true, disallowNullValue: true,)
    List<Episode> appearsIn,
    
  }):
    _id = id '
        _name = name '
        _friends = friends '
        _friendsConnection = friendsConnection '
        _appearsIn = appearsIn ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_id == null){
            missingFields.add(_id);
        }
        if (_name == null){
            missingFields.add(_name);
        }
        if (_friendsConnection == null){
            missingFields.add(_friendsConnection);
        }
        if (_appearsIn == null){
            missingFields.add(_appearsIn);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/* Types */

/// The query type, represents all of the entry points into our object graph
class Query implements ToJson {
  static final String typeName = "";

  
    Character _hero;
    List<Review> _reviews;
    List<SearchResult> _search;
    Character _character;
    Droid _droid;
    Human _human;
    Starship _starship;

  Query({
    
        Character hero,
    
        List<Review> reviews,
    
        List<SearchResult> search,
    
        Character character,
    
        Droid droid,
    
        Human human,
    
        Starship starship,
    
  }):
    _hero = hero '
        _reviews = reviews '
        _search = search '
        _character = character '
        _droid = droid '
        _human = human '
        _starship = starship ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// A connection object for a character's friends
class FriendsConnection implements ToJson {
  static final String typeName = "";

  
  /// The total number of friends
  int _totalCount;
  /// The edges for each of the character's friends.
  List<FriendsEdge> _edges;
  /// A list of the friends, as a convenience when edges are not needed.
  List<Character> _friends;
  /// Information for paginating this connection
  @JsonKey(required: true, disallowNullValue: true,)
    PageInfo _pageInfo;

  FriendsConnection({
    
        int totalCount,
    
        List<FriendsEdge> edges,
    
        List<Character> friends,
    
        @JsonKey(required: true, disallowNullValue: true,)
    PageInfo pageInfo,
    
  }):
    _totalCount = totalCount '
        _edges = edges '
        _friends = friends '
        _pageInfo = pageInfo ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_pageInfo == null){
            missingFields.add(_pageInfo);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// An edge object for a character's friends
class FriendsEdge implements ToJson {
  static final String typeName = "";

  
  /// A cursor used for pagination
  @JsonKey(required: true, disallowNullValue: true,)
    String _cursor;
  /// The character represented by this friendship edge
  Character _node;

  FriendsEdge({
    
        @JsonKey(required: true, disallowNullValue: true,)
    String cursor,
    
        Character node,
    
  }):
    _cursor = cursor '
        _node = node ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_cursor == null){
            missingFields.add(_cursor);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// Information for paginating this connection
class PageInfo implements ToJson {
  static final String typeName = "";

  
    String _startCursor;
    String _endCursor;
    @JsonKey(required: true, disallowNullValue: true,)
    bool _hasNextPage;

  PageInfo({
    
        String startCursor,
    
        String endCursor,
    
        @JsonKey(required: true, disallowNullValue: true,)
    bool hasNextPage,
    
  }):
    _startCursor = startCursor '
        _endCursor = endCursor '
        _hasNextPage = hasNextPage ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_hasNextPage == null){
            missingFields.add(_hasNextPage);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// Represents a review for a movie
class Review implements ToJson {
  static final String typeName = "";

  
  /// The movie
  Episode _episode;
  /// The number of stars this review gave, 1-5
  @JsonKey(required: true, disallowNullValue: true,)
    int _stars;
  /// Comment about the movie
  String _commentary;

  Review({
    
        Episode episode,
    
        @JsonKey(required: true, disallowNullValue: true,)
    int stars,
    
        String commentary,
    
  }):
    _episode = episode '
        _stars = stars '
        _commentary = commentary ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_stars == null){
            missingFields.add(_stars);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// A humanoid creature from the Star Wars universe
class Human implements ToJson, Character {
  static final String typeName = "";

  
  /// The ID of the human
  @JsonKey(required: true, disallowNullValue: true,)
    String _id;
  /// What this human calls themselves
  @JsonKey(required: true, disallowNullValue: true,)
    String _name;
  /// The home planet of the human, or null if unknown
  String _homePlanet;
  /// Height in the preferred unit, default is meters
  double _height;
  /// Mass in kilograms, or null if unknown
  double _mass;
  /// This human's friends, or an empty list if they have none
  List<Character> _friends;
  /// The friends of the human exposed as a connection with edges
  @JsonKey(required: true, disallowNullValue: true,)
    FriendsConnection _friendsConnection;
  /// The movies this human appears in
  @JsonKey(required: true, disallowNullValue: true,)
    List<Episode> _appearsIn;
  /// A list of starships this person has piloted, or an empty list if none
  List<Starship> _starships;

  Human({
    
        @JsonKey(required: true, disallowNullValue: true,)
    String id,
    
        @JsonKey(required: true, disallowNullValue: true,)
    String name,
    
        String homePlanet,
    
        double height,
    
        double mass,
    
        List<Character> friends,
    
        @JsonKey(required: true, disallowNullValue: true,)
    FriendsConnection friendsConnection,
    
        @JsonKey(required: true, disallowNullValue: true,)
    List<Episode> appearsIn,
    
        List<Starship> starships,
    
  }):
    _id = id '
        _name = name '
        _homePlanet = homePlanet '
        _height = height '
        _mass = mass '
        _friends = friends '
        _friendsConnection = friendsConnection '
        _appearsIn = appearsIn '
        _starships = starships ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_id == null){
            missingFields.add(_id);
        }
        if (_name == null){
            missingFields.add(_name);
        }
        if (_friendsConnection == null){
            missingFields.add(_friendsConnection);
        }
        if (_appearsIn == null){
            missingFields.add(_appearsIn);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// 
class Starship implements ToJson {
  static final String typeName = "";

  
  /// The ID of the starship
  @JsonKey(required: true, disallowNullValue: true,)
    String _id;
  /// The name of the starship
  @JsonKey(required: true, disallowNullValue: true,)
    String _name;
  /// Length of the starship, along the longest axis
  double _length;
    List<double> _coordinates;

  Starship({
    
        @JsonKey(required: true, disallowNullValue: true,)
    String id,
    
        @JsonKey(required: true, disallowNullValue: true,)
    String name,
    
        double length,
    
        List<double> coordinates,
    
  }):
    _id = id '
        _name = name '
        _length = length '
        _coordinates = coordinates ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_id == null){
            missingFields.add(_id);
        }
        if (_name == null){
            missingFields.add(_name);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// An autonomous mechanical character in the Star Wars universe
class Droid implements ToJson, Character {
  static final String typeName = "";

  
  /// The ID of the droid
  @JsonKey(required: true, disallowNullValue: true,)
    String _id;
  /// What others call this droid
  @JsonKey(required: true, disallowNullValue: true,)
    String _name;
  /// This droid's friends, or an empty list if they have none
  List<Character> _friends;
  /// The friends of the droid exposed as a connection with edges
  @JsonKey(required: true, disallowNullValue: true,)
    FriendsConnection _friendsConnection;
  /// The movies this droid appears in
  @JsonKey(required: true, disallowNullValue: true,)
    List<Episode> _appearsIn;
  /// This droid's primary function
  String _primaryFunction;

  Droid({
    
        @JsonKey(required: true, disallowNullValue: true,)
    String id,
    
        @JsonKey(required: true, disallowNullValue: true,)
    String name,
    
        List<Character> friends,
    
        @JsonKey(required: true, disallowNullValue: true,)
    FriendsConnection friendsConnection,
    
        @JsonKey(required: true, disallowNullValue: true,)
    List<Episode> appearsIn,
    
        String primaryFunction,
    
  }):
    _id = id '
        _name = name '
        _friends = friends '
        _friendsConnection = friendsConnection '
        _appearsIn = appearsIn '
        _primaryFunction = primaryFunction ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        if (_id == null){
            missingFields.add(_id);
        }
        if (_name == null){
            missingFields.add(_name);
        }
        if (_friendsConnection == null){
            missingFields.add(_friendsConnection);
        }
        if (_appearsIn == null){
            missingFields.add(_appearsIn);
        }
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// The mutation type, represents all updates we can make to our data
class Mutation implements ToJson {
  static final String typeName = "";

  
    Review _createReview;

  Mutation({
    
        Review createReview,
    
  }):
    _createReview = createReview ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}



/// The subscription type, represents all subscriptions we can make to our data
class Subscription implements ToJson {
  static final String typeName = "";

  
    Review _reviewAdded;

  Subscription({
    
        Review reviewAdded,
    
  }):
    _reviewAdded = reviewAdded ;'
    ;

    Set<String> get _missingRequiredFields() {
        Set<String> missingFields = {};
        return missingFields;
    }
    void validate(){
        final missing = _missingRequiredFields;
        assert(missing.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missing}"); 
    }

    bool isValid => _missingRequiredFields.isEmpty;

}


