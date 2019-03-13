// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_graphql_serializers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewInput _$ReviewInputFromJson(Map<String, dynamic> json) {
  return new ReviewInput(
      stars: json['stars'] as int,
      commentary: json['commentary'] as String,
      favorite_color: json['favorite_color'] == null
          ? null
          : new ColorInput.fromJson(
              json['favorite_color'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ReviewInputToJson(ReviewInput instance) =>
    <String, dynamic>{
      'stars': instance.stars,
      'commentary': instance.commentary,
      'favorite_color': instance.favorite_color?.toJson()
    };

ColorInput _$ColorInputFromJson(Map<String, dynamic> json) {
  return new ColorInput(
      red: json['red'] as int,
      green: json['green'] as int,
      blue: json['blue'] as int);
}

Map<String, dynamic> _$ColorInputToJson(ColorInput instance) =>
    <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue
    };

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return new Character(
      id: json['id'] as String,
      name: json['name'] as String,
      friends: (json['friends'] as List)
          ?.map((e) => e == null
              ? null
              : new Character.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      friendsConnection: json['friendsConnection'] == null
          ? null
          : new FriendsConnection.fromJson(
              json['friendsConnection'] as Map<String, dynamic>),
      appearsIn: (json['appearsIn'] as List)
          ?.map((e) =>
              $enumDecodeNullable('Episode', Episode.values, e as String))
          ?.toList());
}

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
      'friendsConnection': instance.friendsConnection?.toJson(),
      'appearsIn': instance.appearsIn
          ?.map((e) => e?.toString()?.split('.')?.last)
          ?.toList()
    };

CharacterFriendsConnectionArgs _$CharacterFriendsConnectionArgsFromJson(
    Map<String, dynamic> json) {
  return new CharacterFriendsConnectionArgs(
      first: json['first'] as int, after: json['after'] as String);
}

Map<String, dynamic> _$CharacterFriendsConnectionArgsToJson(
        CharacterFriendsConnectionArgs instance) =>
    <String, dynamic>{'first': instance.first, 'after': instance.after};

Query _$QueryFromJson(Map<String, dynamic> json) {
  return new Query(
      hero: json['hero'] == null
          ? null
          : new Character.fromJson(json['hero'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List)
          ?.map((e) =>
              e == null ? null : new Review.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      search: (json['search'] as List)
          ?.map((e) => e == null
              ? null
              : new SearchResult.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      character: json['character'] == null
          ? null
          : new Character.fromJson(json['character'] as Map<String, dynamic>),
      droid: json['droid'] == null
          ? null
          : new Droid.fromJson(json['droid'] as Map<String, dynamic>),
      human: json['human'] == null
          ? null
          : new Human.fromJson(json['human'] as Map<String, dynamic>),
      starship: json['starship'] == null
          ? null
          : new Starship.fromJson(json['starship'] as Map<String, dynamic>));
}

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'hero': instance.hero?.toJson(),
      'reviews': instance.reviews?.map((e) => e?.toJson())?.toList(),
      'search': instance.search?.map((e) => e?.toJson())?.toList(),
      'character': instance.character?.toJson(),
      'droid': instance.droid?.toJson(),
      'human': instance.human?.toJson(),
      'starship': instance.starship?.toJson()
    };

QueryHeroArgs _$QueryHeroArgsFromJson(Map<String, dynamic> json) {
  return new QueryHeroArgs(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String));
}

Map<String, dynamic> _$QueryHeroArgsToJson(QueryHeroArgs instance) =>
    <String, dynamic>{
      'episode': instance.episode?.toString()?.split('.')?.last
    };

QueryReviewsArgs _$QueryReviewsArgsFromJson(Map<String, dynamic> json) {
  return new QueryReviewsArgs(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String));
}

Map<String, dynamic> _$QueryReviewsArgsToJson(QueryReviewsArgs instance) =>
    <String, dynamic>{
      'episode': instance.episode?.toString()?.split('.')?.last
    };

QuerySearchArgs _$QuerySearchArgsFromJson(Map<String, dynamic> json) {
  return new QuerySearchArgs(text: json['text'] as String);
}

Map<String, dynamic> _$QuerySearchArgsToJson(QuerySearchArgs instance) =>
    <String, dynamic>{'text': instance.text};

QueryCharacterArgs _$QueryCharacterArgsFromJson(Map<String, dynamic> json) {
  return new QueryCharacterArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryCharacterArgsToJson(QueryCharacterArgs instance) =>
    <String, dynamic>{'id': instance.id};

QueryDroidArgs _$QueryDroidArgsFromJson(Map<String, dynamic> json) {
  return new QueryDroidArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryDroidArgsToJson(QueryDroidArgs instance) =>
    <String, dynamic>{'id': instance.id};

QueryHumanArgs _$QueryHumanArgsFromJson(Map<String, dynamic> json) {
  return new QueryHumanArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryHumanArgsToJson(QueryHumanArgs instance) =>
    <String, dynamic>{'id': instance.id};

QueryStarshipArgs _$QueryStarshipArgsFromJson(Map<String, dynamic> json) {
  return new QueryStarshipArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryStarshipArgsToJson(QueryStarshipArgs instance) =>
    <String, dynamic>{'id': instance.id};

FriendsConnection _$FriendsConnectionFromJson(Map<String, dynamic> json) {
  return new FriendsConnection(
      totalCount: json['totalCount'] as int,
      edges: (json['edges'] as List)
          ?.map((e) => e == null
              ? null
              : new FriendsEdge.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      friends: (json['friends'] as List)
          ?.map((e) => e == null
              ? null
              : new Character.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : new PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>));
}

Map<String, dynamic> _$FriendsConnectionToJson(FriendsConnection instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'edges': instance.edges?.map((e) => e?.toJson())?.toList(),
      'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
      'pageInfo': instance.pageInfo?.toJson()
    };

FriendsEdge _$FriendsEdgeFromJson(Map<String, dynamic> json) {
  return new FriendsEdge(
      cursor: json['cursor'] as String,
      node: json['node'] == null
          ? null
          : new Character.fromJson(json['node'] as Map<String, dynamic>));
}

Map<String, dynamic> _$FriendsEdgeToJson(FriendsEdge instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'node': instance.node?.toJson()
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return new PageInfo(
      startCursor: json['startCursor'] as String,
      endCursor: json['endCursor'] as String,
      hasNextPage: json['hasNextPage'] as bool);
}

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'startCursor': instance.startCursor,
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage
    };

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return new Review(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String),
      stars: json['stars'] as int,
      commentary: json['commentary'] as String);
}

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'episode': instance.episode?.toString()?.split('.')?.last,
      'stars': instance.stars,
      'commentary': instance.commentary
    };

Human _$HumanFromJson(Map<String, dynamic> json) {
  return new Human(
      id: json['id'] as String,
      name: json['name'] as String,
      homePlanet: json['homePlanet'] as String,
      height: (json['height'] as num)?.toDouble(),
      mass: (json['mass'] as num)?.toDouble(),
      friends: (json['friends'] as List)
          ?.map((e) => e == null
              ? null
              : new Character.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      friendsConnection: json['friendsConnection'] == null
          ? null
          : new FriendsConnection.fromJson(
              json['friendsConnection'] as Map<String, dynamic>),
      appearsIn: (json['appearsIn'] as List)
          ?.map((e) =>
              $enumDecodeNullable('Episode', Episode.values, e as String))
          ?.toList(),
      starships: (json['starships'] as List)
          ?.map((e) => e == null
              ? null
              : new Starship.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$HumanToJson(Human instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'homePlanet': instance.homePlanet,
      'height': instance.height,
      'mass': instance.mass,
      'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
      'friendsConnection': instance.friendsConnection?.toJson(),
      'appearsIn': instance.appearsIn
          ?.map((e) => e?.toString()?.split('.')?.last)
          ?.toList(),
      'starships': instance.starships?.map((e) => e?.toJson())?.toList()
    };

HumanHeightArgs _$HumanHeightArgsFromJson(Map<String, dynamic> json) {
  return new HumanHeightArgs(
      unit: $enumDecodeNullable(
          'LengthUnit', LengthUnit.values, json['unit'] as String));
}

Map<String, dynamic> _$HumanHeightArgsToJson(HumanHeightArgs instance) =>
    <String, dynamic>{'unit': instance.unit?.toString()?.split('.')?.last};

HumanFriendsConnectionArgs _$HumanFriendsConnectionArgsFromJson(
    Map<String, dynamic> json) {
  return new HumanFriendsConnectionArgs(
      first: json['first'] as int, after: json['after'] as String);
}

Map<String, dynamic> _$HumanFriendsConnectionArgsToJson(
        HumanFriendsConnectionArgs instance) =>
    <String, dynamic>{'first': instance.first, 'after': instance.after};

Starship _$StarshipFromJson(Map<String, dynamic> json) {
  return new Starship(
      id: json['id'] as String,
      name: json['name'] as String,
      length: (json['length'] as num)?.toDouble(),
      coordinates: (json['coordinates'] as List)
          ?.map((e) => (e as num)?.toDouble())
          ?.toList());
}

Map<String, dynamic> _$StarshipToJson(Starship instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'length': instance.length,
      'coordinates': instance.coordinates
    };

StarshipLengthArgs _$StarshipLengthArgsFromJson(Map<String, dynamic> json) {
  return new StarshipLengthArgs(
      unit: $enumDecodeNullable(
          'LengthUnit', LengthUnit.values, json['unit'] as String));
}

Map<String, dynamic> _$StarshipLengthArgsToJson(StarshipLengthArgs instance) =>
    <String, dynamic>{'unit': instance.unit?.toString()?.split('.')?.last};

Droid _$DroidFromJson(Map<String, dynamic> json) {
  return new Droid(
      id: json['id'] as String,
      name: json['name'] as String,
      friends: (json['friends'] as List)
          ?.map((e) => e == null
              ? null
              : new Character.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      friendsConnection: json['friendsConnection'] == null
          ? null
          : new FriendsConnection.fromJson(
              json['friendsConnection'] as Map<String, dynamic>),
      appearsIn: (json['appearsIn'] as List)
          ?.map((e) =>
              $enumDecodeNullable('Episode', Episode.values, e as String))
          ?.toList(),
      primaryFunction: json['primaryFunction'] as String);
}

Map<String, dynamic> _$DroidToJson(Droid instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
      'friendsConnection': instance.friendsConnection?.toJson(),
      'appearsIn': instance.appearsIn
          ?.map((e) => e?.toString()?.split('.')?.last)
          ?.toList(),
      'primaryFunction': instance.primaryFunction
    };

DroidFriendsConnectionArgs _$DroidFriendsConnectionArgsFromJson(
    Map<String, dynamic> json) {
  return new DroidFriendsConnectionArgs(
      first: json['first'] as int, after: json['after'] as String);
}

Map<String, dynamic> _$DroidFriendsConnectionArgsToJson(
        DroidFriendsConnectionArgs instance) =>
    <String, dynamic>{'first': instance.first, 'after': instance.after};

Mutation _$MutationFromJson(Map<String, dynamic> json) {
  return new Mutation(
      createReview: json['createReview'] == null
          ? null
          : new Review.fromJson(json['createReview'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MutationToJson(Mutation instance) =>
    <String, dynamic>{'createReview': instance.createReview?.toJson()};

MutationCreateReviewArgs _$MutationCreateReviewArgsFromJson(
    Map<String, dynamic> json) {
  return new MutationCreateReviewArgs(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String),
      review: json['review'] == null
          ? null
          : new ReviewInput.fromJson(json['review'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MutationCreateReviewArgsToJson(
        MutationCreateReviewArgs instance) =>
    <String, dynamic>{
      'episode': instance.episode?.toString()?.split('.')?.last,
      'review': instance.review?.toJson()
    };

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return new Subscription(
      reviewAdded: json['reviewAdded'] == null
          ? null
          : new Review.fromJson(json['reviewAdded'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{'reviewAdded': instance.reviewAdded?.toJson()};

SubscriptionReviewAddedArgs _$SubscriptionReviewAddedArgsFromJson(
    Map<String, dynamic> json) {
  return new SubscriptionReviewAddedArgs(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String));
}

Map<String, dynamic> _$SubscriptionReviewAddedArgsToJson(
        SubscriptionReviewAddedArgs instance) =>
    <String, dynamic>{
      'episode': instance.episode?.toString()?.split('.')?.last
    };

HeroForEpisodeVariables _$HeroForEpisodeVariablesFromJson(
    Map<String, dynamic> json) {
  return new HeroForEpisodeVariables(
      ep: $enumDecodeNullable('Episode', Episode.values, json['ep'] as String));
}

Map<String, dynamic> _$HeroForEpisodeVariablesToJson(
        HeroForEpisodeVariables instance) =>
    <String, dynamic>{'ep': instance.ep?.toString()?.split('.')?.last};

HeroForEpisodeHumanInlineFragment _$HeroForEpisodeHumanInlineFragmentFromJson(
    Map<String, dynamic> json) {
  return new HeroForEpisodeHumanInlineFragment(
      height: (json['height'] as num)?.toDouble(),
      homePlanet: json['homePlanet'] as String);
}

Map<String, dynamic> _$HeroForEpisodeHumanInlineFragmentToJson(
        HeroForEpisodeHumanInlineFragment instance) =>
    <String, dynamic>{
      'height': instance.height,
      'homePlanet': instance.homePlanet
    };

HeroForEpisodeDroidInlineFragment _$HeroForEpisodeDroidInlineFragmentFromJson(
    Map<String, dynamic> json) {
  return new HeroForEpisodeDroidInlineFragment(
      primaryFunction: json['primaryFunction'] as String);
}

Map<String, dynamic> _$HeroForEpisodeDroidInlineFragmentToJson(
        HeroForEpisodeDroidInlineFragment instance) =>
    <String, dynamic>{'primaryFunction': instance.primaryFunction};

HeroForEpisodeHero _$HeroForEpisodeHeroFromJson(Map<String, dynamic> json) {
  return new HeroForEpisodeHero(name: json['name'] as String);
}

Map<String, dynamic> _$HeroForEpisodeHeroToJson(HeroForEpisodeHero instance) =>
    <String, dynamic>{'name': instance.name};

HeroForEpisodeQuery _$HeroForEpisodeQueryFromJson(Map<String, dynamic> json) {
  return new HeroForEpisodeQuery(
      hero: json['hero'] == null
          ? null
          : new HeroForEpisodeHero.fromJson(
              json['hero'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HeroForEpisodeQueryToJson(
        HeroForEpisodeQuery instance) =>
    <String, dynamic>{'hero': instance.hero?.toJson()};
