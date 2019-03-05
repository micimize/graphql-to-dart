 // GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';



/* Enums */
/// A list of options for the sort order of the feed
enum FeedType {
  HOT,
  NEW,
  TOP,
}

/// The type of vote to record, when submitting a vote
enum VoteType {
  UP,
  DOWN,
  CANCEL,
}


abstract class ToJson {
  Map<String, dynamic> toJson();
}


/* Input Types */

/* Interfaces */

/* Types */
/// 
@JsonSerializable()
class Query implements ToJson {

  
  /// A feed of repository submissions
  List<Entry> feed;
  /// A single entry
  Entry entry;
  /// Return the currently logged in user, or null if nobody is logged in
  User currentUser;

  Query({
    this.feed,
    this.entry,
    this.currentUser,
    
  });

  Query.empty();


  static I _assign<I extends Query>(
    I into,
    Query source,
  ) {
    into.feed = source.feed;
    into.entry = source.entry;
    into.currentUser = source.currentUser;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Query>(
    I into,
    Query source,
    [List<Query> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [Query]
  static Query copy(Query source) {
     return Query(
        feed: source.feed,
        entry: source.entry,
        currentUser: source.currentUser,
    );
  }

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$QueryFromJson;
  static const serializeToJson = _$QueryToJson;

}



@JsonSerializable()
class QueryFeedArgs implements ToJson {

  
  /// The sort order for the feed
  FeedType type;
  /// The number of items to skip, for pagination
  int offset;
  /// The number of items to fetch starting from the offset, for pagination
  int limit;

  QueryFeedArgs({
    @required this.type,
    this.offset,
    this.limit,
    
  });

  QueryFeedArgs.empty();


  static I _assign<I extends QueryFeedArgs>(
    I into,
    QueryFeedArgs source,
  ) {
    into.type = source.type;
    into.offset = source.offset;
    into.limit = source.limit;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryFeedArgs>(
    I into,
    QueryFeedArgs source,
    [List<QueryFeedArgs> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [QueryFeedArgs]
  static QueryFeedArgs copy(QueryFeedArgs source) {
     return QueryFeedArgs(
        type: source.type,
        offset: source.offset,
        limit: source.limit,
    );
  }

  factory QueryFeedArgs.fromJson(Map<String, dynamic> json) => _$QueryFeedArgsFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$QueryFeedArgsFromJson;
  static const serializeToJson = _$QueryFeedArgsToJson;

}


@JsonSerializable()
class QueryEntryArgs implements ToJson {

  
  /// The full repository name from GitHub, e.g. "apollostack/GitHunt-API"
  String repoFullName;

  QueryEntryArgs({
    @required this.repoFullName,
    
  });

  QueryEntryArgs.empty();


  static I _assign<I extends QueryEntryArgs>(
    I into,
    QueryEntryArgs source,
  ) {
    into.repoFullName = source.repoFullName;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends QueryEntryArgs>(
    I into,
    QueryEntryArgs source,
    [List<QueryEntryArgs> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [QueryEntryArgs]
  static QueryEntryArgs copy(QueryEntryArgs source) {
     return QueryEntryArgs(
        repoFullName: source.repoFullName,
    );
  }

  factory QueryEntryArgs.fromJson(Map<String, dynamic> json) => _$QueryEntryArgsFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$QueryEntryArgsFromJson;
  static const serializeToJson = _$QueryEntryArgsToJson;

}



/// Information about a GitHub repository submitted to GitHunt
@JsonSerializable()
class Entry implements ToJson {

  
  /// Information about the repository from GitHub
  Repository repository;
  /// The GitHub user who submitted this entry
  User postedBy;
  /// A timestamp of when the entry was submitted
  double createdAt;
  /// The score of this repository, upvotes - downvotes
  int score;
  /// The hot score of this repository
  double hotScore;
  /// Comments posted about this repository
  List<Comment> comments;
  /// The number of comments posted about this repository
  int commentCount;
  /// The SQL ID of this entry
  int id;
  /// XXX to be changed
  Vote vote;

  Entry({
    @required this.repository,
    @required this.postedBy,
    @required this.createdAt,
    @required this.score,
    @required this.hotScore,
    @required this.comments,
    @required this.commentCount,
    @required this.id,
    @required this.vote,
    
  });

  Entry.empty();


  static I _assign<I extends Entry>(
    I into,
    Entry source,
  ) {
    into.repository = source.repository;
    into.postedBy = source.postedBy;
    into.createdAt = source.createdAt;
    into.score = source.score;
    into.hotScore = source.hotScore;
    into.comments = source.comments;
    into.commentCount = source.commentCount;
    into.id = source.id;
    into.vote = source.vote;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Entry>(
    I into,
    Entry source,
    [List<Entry> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [Entry]
  static Entry copy(Entry source) {
     return Entry(
        repository: source.repository,
        postedBy: source.postedBy,
        createdAt: source.createdAt,
        score: source.score,
        hotScore: source.hotScore,
        comments: source.comments,
        commentCount: source.commentCount,
        id: source.id,
        vote: source.vote,
    );
  }

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$EntryFromJson;
  static const serializeToJson = _$EntryToJson;

}



@JsonSerializable()
class EntryCommentsArgs implements ToJson {

  
    int limit;
    int offset;

  EntryCommentsArgs({
    this.limit,
    this.offset,
    
  });

  EntryCommentsArgs.empty();


  static I _assign<I extends EntryCommentsArgs>(
    I into,
    EntryCommentsArgs source,
  ) {
    into.limit = source.limit;
    into.offset = source.offset;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends EntryCommentsArgs>(
    I into,
    EntryCommentsArgs source,
    [List<EntryCommentsArgs> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [EntryCommentsArgs]
  static EntryCommentsArgs copy(EntryCommentsArgs source) {
     return EntryCommentsArgs(
        limit: source.limit,
        offset: source.offset,
    );
  }

  factory EntryCommentsArgs.fromJson(Map<String, dynamic> json) => _$EntryCommentsArgsFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$EntryCommentsArgsFromJson;
  static const serializeToJson = _$EntryCommentsArgsToJson;

}



/// A repository object from the GitHub API. This uses the exact field names
/// returned by the
GitHub API for simplicity, even though the convention for
/// GraphQL is usually to camel case.
@JsonSerializable()
class Repository implements ToJson {

  
  /// Just the name of the repository, e.g. GitHunt-API
  String name;
  /// The full name of the repository with the username, e.g. apollostack/GitHunt-API
  String full_name;
  /// The description of the repository
  String description;
  /// The link to the repository on GitHub
  String html_url;
  /// The number of people who have starred this repository on GitHub
  int stargazers_count;
  /// The number of open issues on this repository on GitHub
  int open_issues_count;
  /// The owner of this repository on GitHub, e.g. apollostack
  User owner;

  Repository({
    @required this.name,
    @required this.full_name,
    this.description,
    @required this.html_url,
    @required this.stargazers_count,
    this.open_issues_count,
    this.owner,
    
  });

  Repository.empty();


  static I _assign<I extends Repository>(
    I into,
    Repository source,
  ) {
    into.name = source.name;
    into.full_name = source.full_name;
    into.description = source.description;
    into.html_url = source.html_url;
    into.stargazers_count = source.stargazers_count;
    into.open_issues_count = source.open_issues_count;
    into.owner = source.owner;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Repository>(
    I into,
    Repository source,
    [List<Repository> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [Repository]
  static Repository copy(Repository source) {
     return Repository(
        name: source.name,
        full_name: source.full_name,
        description: source.description,
        html_url: source.html_url,
        stargazers_count: source.stargazers_count,
        open_issues_count: source.open_issues_count,
        owner: source.owner,
    );
  }

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$RepositoryFromJson;
  static const serializeToJson = _$RepositoryToJson;

}




/// A user object from the GitHub API. This uses the exact field names returned from
/// the GitHub API.
@JsonSerializable()
class User implements ToJson {

  
  /// The name of the user, e.g. apollostack
  String login;
  /// The URL to a directly embeddable image for this user's avatar
  String avatar_url;
  /// The URL of this user's GitHub page
  String html_url;

  User({
    @required this.login,
    @required this.avatar_url,
    @required this.html_url,
    
  });

  User.empty();


  static I _assign<I extends User>(
    I into,
    User source,
  ) {
    into.login = source.login;
    into.avatar_url = source.avatar_url;
    into.html_url = source.html_url;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends User>(
    I into,
    User source,
    [List<User> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [User]
  static User copy(User source) {
     return User(
        login: source.login,
        avatar_url: source.avatar_url,
        html_url: source.html_url,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$UserFromJson;
  static const serializeToJson = _$UserToJson;

}




/// A comment about an entry, submitted by a user
@JsonSerializable()
class Comment implements ToJson {

  
  /// The SQL ID of this entry
  int id;
  /// The GitHub user who posted the comment
  User postedBy;
  /// A timestamp of when the comment was posted
  double createdAt;
  /// The text of the comment
  String content;
  /// The repository which this comment is about
  String repoName;

  Comment({
    @required this.id,
    @required this.postedBy,
    @required this.createdAt,
    @required this.content,
    @required this.repoName,
    
  });

  Comment.empty();


  static I _assign<I extends Comment>(
    I into,
    Comment source,
  ) {
    into.id = source.id;
    into.postedBy = source.postedBy;
    into.createdAt = source.createdAt;
    into.content = source.content;
    into.repoName = source.repoName;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Comment>(
    I into,
    Comment source,
    [List<Comment> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [Comment]
  static Comment copy(Comment source) {
     return Comment(
        id: source.id,
        postedBy: source.postedBy,
        createdAt: source.createdAt,
        content: source.content,
        repoName: source.repoName,
    );
  }

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$CommentFromJson;
  static const serializeToJson = _$CommentToJson;

}




/// XXX to be removed
@JsonSerializable()
class Vote implements ToJson {

  
    int vote_value;

  Vote({
    @required this.vote_value,
    
  });

  Vote.empty();


  static I _assign<I extends Vote>(
    I into,
    Vote source,
  ) {
    into.vote_value = source.vote_value;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Vote>(
    I into,
    Vote source,
    [List<Vote> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [Vote]
  static Vote copy(Vote source) {
     return Vote(
        vote_value: source.vote_value,
    );
  }

  factory Vote.fromJson(Map<String, dynamic> json) => _$VoteFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$VoteFromJson;
  static const serializeToJson = _$VoteToJson;

}




/// 
@JsonSerializable()
class Mutation implements ToJson {

  
  /// Submit a new repository, returns the new submission
  Entry submitRepository;
  /// Vote on a repository submission, returns the submission that was voted on
  Entry vote;
  /// Comment on a repository, returns the new comment
  Comment submitComment;

  Mutation({
    this.submitRepository,
    this.vote,
    this.submitComment,
    
  });

  Mutation.empty();


  static I _assign<I extends Mutation>(
    I into,
    Mutation source,
  ) {
    into.submitRepository = source.submitRepository;
    into.vote = source.vote;
    into.submitComment = source.submitComment;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Mutation>(
    I into,
    Mutation source,
    [List<Mutation> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [Mutation]
  static Mutation copy(Mutation source) {
     return Mutation(
        submitRepository: source.submitRepository,
        vote: source.vote,
        submitComment: source.submitComment,
    );
  }

  factory Mutation.fromJson(Map<String, dynamic> json) => _$MutationFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MutationFromJson;
  static const serializeToJson = _$MutationToJson;

}



@JsonSerializable()
class MutationSubmitRepositoryArgs implements ToJson {

  
  /// The full repository name from GitHub, e.g. "apollostack/GitHunt-API"
  String repoFullName;

  MutationSubmitRepositoryArgs({
    @required this.repoFullName,
    
  });

  MutationSubmitRepositoryArgs.empty();


  static I _assign<I extends MutationSubmitRepositoryArgs>(
    I into,
    MutationSubmitRepositoryArgs source,
  ) {
    into.repoFullName = source.repoFullName;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MutationSubmitRepositoryArgs>(
    I into,
    MutationSubmitRepositoryArgs source,
    [List<MutationSubmitRepositoryArgs> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MutationSubmitRepositoryArgs]
  static MutationSubmitRepositoryArgs copy(MutationSubmitRepositoryArgs source) {
     return MutationSubmitRepositoryArgs(
        repoFullName: source.repoFullName,
    );
  }

  factory MutationSubmitRepositoryArgs.fromJson(Map<String, dynamic> json) => _$MutationSubmitRepositoryArgsFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MutationSubmitRepositoryArgsFromJson;
  static const serializeToJson = _$MutationSubmitRepositoryArgsToJson;

}


@JsonSerializable()
class MutationVoteArgs implements ToJson {

  
  /// The full repository name from GitHub, e.g. "apollostack/GitHunt-API"
  String repoFullName;
  /// The type of vote - UP, DOWN, or CANCEL
  VoteType type;

  MutationVoteArgs({
    @required this.repoFullName,
    @required this.type,
    
  });

  MutationVoteArgs.empty();


  static I _assign<I extends MutationVoteArgs>(
    I into,
    MutationVoteArgs source,
  ) {
    into.repoFullName = source.repoFullName;
    into.type = source.type;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MutationVoteArgs>(
    I into,
    MutationVoteArgs source,
    [List<MutationVoteArgs> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MutationVoteArgs]
  static MutationVoteArgs copy(MutationVoteArgs source) {
     return MutationVoteArgs(
        repoFullName: source.repoFullName,
        type: source.type,
    );
  }

  factory MutationVoteArgs.fromJson(Map<String, dynamic> json) => _$MutationVoteArgsFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MutationVoteArgsFromJson;
  static const serializeToJson = _$MutationVoteArgsToJson;

}


@JsonSerializable()
class MutationSubmitCommentArgs implements ToJson {

  
  /// The full repository name from GitHub, e.g. "apollostack/GitHunt-API"
  String repoFullName;
  /// The text content for the new comment
  String commentContent;

  MutationSubmitCommentArgs({
    @required this.repoFullName,
    @required this.commentContent,
    
  });

  MutationSubmitCommentArgs.empty();


  static I _assign<I extends MutationSubmitCommentArgs>(
    I into,
    MutationSubmitCommentArgs source,
  ) {
    into.repoFullName = source.repoFullName;
    into.commentContent = source.commentContent;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MutationSubmitCommentArgs>(
    I into,
    MutationSubmitCommentArgs source,
    [List<MutationSubmitCommentArgs> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MutationSubmitCommentArgs]
  static MutationSubmitCommentArgs copy(MutationSubmitCommentArgs source) {
     return MutationSubmitCommentArgs(
        repoFullName: source.repoFullName,
        commentContent: source.commentContent,
    );
  }

  factory MutationSubmitCommentArgs.fromJson(Map<String, dynamic> json) => _$MutationSubmitCommentArgsFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MutationSubmitCommentArgsFromJson;
  static const serializeToJson = _$MutationSubmitCommentArgsToJson;

}



/// 
@JsonSerializable()
class Subscription implements ToJson {

  
  /// Subscription fires on every comment added
  Comment commentAdded;

  Subscription({
    this.commentAdded,
    
  });

  Subscription.empty();


  static I _assign<I extends Subscription>(
    I into,
    Subscription source,
  ) {
    into.commentAdded = source.commentAdded;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends Subscription>(
    I into,
    Subscription source,
    [List<Subscription> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [Subscription]
  static Subscription copy(Subscription source) {
     return Subscription(
        commentAdded: source.commentAdded,
    );
  }

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$SubscriptionFromJson;
  static const serializeToJson = _$SubscriptionToJson;

}



@JsonSerializable()
class SubscriptionCommentAddedArgs implements ToJson {

  
    String repoFullName;

  SubscriptionCommentAddedArgs({
    @required this.repoFullName,
    
  });

  SubscriptionCommentAddedArgs.empty();


  static I _assign<I extends SubscriptionCommentAddedArgs>(
    I into,
    SubscriptionCommentAddedArgs source,
  ) {
    into.repoFullName = source.repoFullName;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends SubscriptionCommentAddedArgs>(
    I into,
    SubscriptionCommentAddedArgs source,
    [List<SubscriptionCommentAddedArgs> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [SubscriptionCommentAddedArgs]
  static SubscriptionCommentAddedArgs copy(SubscriptionCommentAddedArgs source) {
     return SubscriptionCommentAddedArgs(
        repoFullName: source.repoFullName,
    );
  }

  factory SubscriptionCommentAddedArgs.fromJson(Map<String, dynamic> json) => _$SubscriptionCommentAddedArgsFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$SubscriptionCommentAddedArgsFromJson;
  static const serializeToJson = _$SubscriptionCommentAddedArgsToJson;

}





@JsonSerializable()
class MyFeedVariables implements ToJson {

  

  MyFeedVariables();

  MyFeedVariables.empty();


  static I _assign<I extends MyFeedVariables>(
    I into,
    MyFeedVariables source,
  ) {
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MyFeedVariables>(
    I into,
    MyFeedVariables source,
    [List<MyFeedVariables> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MyFeedVariables]
  static MyFeedVariables copy(MyFeedVariables source) {
     return MyFeedVariables(
    );
  }

  factory MyFeedVariables.fromJson(Map<String, dynamic> json) => _$MyFeedVariablesFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MyFeedVariablesFromJson;
  static const serializeToJson = _$MyFeedVariablesToJson;

}


@JsonSerializable()
class MyFeedOwner implements ToJson {
  static final String typeName = "User";

  
    String avatar_url;

  MyFeedOwner({
    @required this.avatar_url,
    
  });

  MyFeedOwner.empty();


  static I _assign<I extends MyFeedOwner>(
    I into,
    MyFeedOwner source,
  ) {
    into.avatar_url = source.avatar_url;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MyFeedOwner>(
    I into,
    MyFeedOwner source,
    [List<MyFeedOwner> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MyFeedOwner]
  static MyFeedOwner copy(MyFeedOwner source) {
     return MyFeedOwner(
        avatar_url: source.avatar_url,
    );
  }

  factory MyFeedOwner.fromJson(Map<String, dynamic> json) => _$MyFeedOwnerFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MyFeedOwnerFromJson;
  static Map<String, dynamic> serializeToJson(MyFeedOwner instance){
    Map<String, dynamic> json = _$MyFeedOwnerToJson(instance);
    json['__typename'] = typeName;
    return json;
  }

}



@JsonSerializable()
class MyFeedRepository implements ToJson {
  static final String typeName = "Repository";

  
    String full_name;
    String html_url;
    MyFeedOwner owner;

  MyFeedRepository({
    @required this.full_name,
    @required this.html_url,
    this.owner,
    
  });

  MyFeedRepository.empty();


  static I _assign<I extends MyFeedRepository>(
    I into,
    MyFeedRepository source,
  ) {
    into.full_name = source.full_name;
    into.html_url = source.html_url;
    into.owner = source.owner;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MyFeedRepository>(
    I into,
    MyFeedRepository source,
    [List<MyFeedRepository> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MyFeedRepository]
  static MyFeedRepository copy(MyFeedRepository source) {
     return MyFeedRepository(
        full_name: source.full_name,
        html_url: source.html_url,
        owner: source.owner,
    );
  }

  factory MyFeedRepository.fromJson(Map<String, dynamic> json) => _$MyFeedRepositoryFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MyFeedRepositoryFromJson;
  static Map<String, dynamic> serializeToJson(MyFeedRepository instance){
    Map<String, dynamic> json = _$MyFeedRepositoryToJson(instance);
    json['__typename'] = typeName;
    return json;
  }

}



@JsonSerializable()
class MyFeedFeed implements ToJson {
  static final String typeName = "Entry";

  
    int id;
    int commentCount;
    MyFeedRepository repository;

  MyFeedFeed({
    @required this.id,
    @required this.commentCount,
    @required this.repository,
    
  });

  MyFeedFeed.empty();


  static I _assign<I extends MyFeedFeed>(
    I into,
    MyFeedFeed source,
  ) {
    into.id = source.id;
    into.commentCount = source.commentCount;
    into.repository = source.repository;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MyFeedFeed>(
    I into,
    MyFeedFeed source,
    [List<MyFeedFeed> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MyFeedFeed]
  static MyFeedFeed copy(MyFeedFeed source) {
     return MyFeedFeed(
        id: source.id,
        commentCount: source.commentCount,
        repository: source.repository,
    );
  }

  factory MyFeedFeed.fromJson(Map<String, dynamic> json) => _$MyFeedFeedFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MyFeedFeedFromJson;
  static Map<String, dynamic> serializeToJson(MyFeedFeed instance){
    Map<String, dynamic> json = _$MyFeedFeedToJson(instance);
    json['__typename'] = typeName;
    return json;
  }

}




@JsonSerializable()
class MyFeedQuery implements ToJson {
  static final String typeName = "MyFeedQuery";

  
    List<MyFeedFeed> feed;

  MyFeedQuery({
    this.feed,
    
  });

  MyFeedQuery.empty();


  static I _assign<I extends MyFeedQuery>(
    I into,
    MyFeedQuery source,
  ) {
    into.feed = source.feed;
    return into;
  }

  /// Modeled after javascript's Object.assign.
  /// Copies the attributes from [source] into [target],
  /// then optionally does the same for each item in [vargs]
  static I assign<I extends MyFeedQuery>(
    I into,
    MyFeedQuery source,
    [List<MyFeedQuery> vargs]
  ) {
    into = _assign(into, source);
    if (vargs != null){
      vargs.forEach((varg){
        into = _assign(into, varg);
      });
    }
    return into;
  }



  /// Copies and downcasts any inheriting [source] into a new [MyFeedQuery]
  static MyFeedQuery copy(MyFeedQuery source) {
     return MyFeedQuery(
        feed: source.feed,
    );
  }

  factory MyFeedQuery.fromJson(Map<String, dynamic> json) => _$MyFeedQueryFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static const deserializeFromJson = _$MyFeedQueryFromJson;
  static Map<String, dynamic> serializeToJson(MyFeedQuery instance){
    Map<String, dynamic> json = _$MyFeedQueryToJson(instance);
    json['__typename'] = typeName;
    return json;
  }

}
