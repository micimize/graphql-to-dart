// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_graphql_serializers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewInput _$ReviewInputFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['stars']);
  return new ReviewInput(
      stars: json['stars'] as int,
      commentary: json['commentary'] as String,
      favorite_color: json['favorite_color'] == null
          ? null
          : new ColorInput.fromJson(
              json['favorite_color'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ReviewInputToJson(ReviewInput instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stars', instance.stars);
  val['commentary'] = instance.commentary;
  val['favorite_color'] = instance.favorite_color?.toJson();
  return val;
}

ColorInput _$ColorInputFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['red', 'green', 'blue']);
  return new ColorInput(
      red: json['red'] as int,
      green: json['green'] as int,
      blue: json['blue'] as int);
}

Map<String, dynamic> _$ColorInputToJson(ColorInput instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('red', instance.red);
  writeNotNull('green', instance.green);
  writeNotNull('blue', instance.blue);
  return val;
}

Character _$CharacterFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const [
    'id',
    'name',
    'friendsConnection',
    'appearsIn'
  ]);
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

Map<String, dynamic> _$CharacterToJson(Character instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['friends'] = instance.friends?.map((e) => e?.toJson())?.toList();
  writeNotNull('friendsConnection', instance.friendsConnection?.toJson());
  writeNotNull(
      'appearsIn',
      instance.appearsIn
          ?.map((e) => e?.toString()?.split('.')?.last)
          ?.toList());
  return val;
}

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
  $checkKeys(json, disallowNullValues: const ['episode']);
  return new QueryReviewsArgs(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String));
}

Map<String, dynamic> _$QueryReviewsArgsToJson(QueryReviewsArgs instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('episode', instance.episode?.toString()?.split('.')?.last);
  return val;
}

QuerySearchArgs _$QuerySearchArgsFromJson(Map<String, dynamic> json) {
  return new QuerySearchArgs(text: json['text'] as String);
}

Map<String, dynamic> _$QuerySearchArgsToJson(QuerySearchArgs instance) =>
    <String, dynamic>{'text': instance.text};

QueryCharacterArgs _$QueryCharacterArgsFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['id']);
  return new QueryCharacterArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryCharacterArgsToJson(QueryCharacterArgs instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

QueryDroidArgs _$QueryDroidArgsFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['id']);
  return new QueryDroidArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryDroidArgsToJson(QueryDroidArgs instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

QueryHumanArgs _$QueryHumanArgsFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['id']);
  return new QueryHumanArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryHumanArgsToJson(QueryHumanArgs instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

QueryStarshipArgs _$QueryStarshipArgsFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['id']);
  return new QueryStarshipArgs(id: json['id'] as String);
}

Map<String, dynamic> _$QueryStarshipArgsToJson(QueryStarshipArgs instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

FriendsConnection _$FriendsConnectionFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['pageInfo']);
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

Map<String, dynamic> _$FriendsConnectionToJson(FriendsConnection instance) {
  var val = <String, dynamic>{
    'totalCount': instance.totalCount,
    'edges': instance.edges?.map((e) => e?.toJson())?.toList(),
    'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pageInfo', instance.pageInfo?.toJson());
  return val;
}

FriendsEdge _$FriendsEdgeFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['cursor']);
  return new FriendsEdge(
      cursor: json['cursor'] as String,
      node: json['node'] == null
          ? null
          : new Character.fromJson(json['node'] as Map<String, dynamic>));
}

Map<String, dynamic> _$FriendsEdgeToJson(FriendsEdge instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  val['node'] = instance.node?.toJson();
  return val;
}

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['hasNextPage']);
  return new PageInfo(
      startCursor: json['startCursor'] as String,
      endCursor: json['endCursor'] as String,
      hasNextPage: json['hasNextPage'] as bool);
}

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) {
  var val = <String, dynamic>{
    'startCursor': instance.startCursor,
    'endCursor': instance.endCursor,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hasNextPage', instance.hasNextPage);
  return val;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['stars']);
  return new Review(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String),
      stars: json['stars'] as int,
      commentary: json['commentary'] as String);
}

Map<String, dynamic> _$ReviewToJson(Review instance) {
  var val = <String, dynamic>{
    'episode': instance.episode?.toString()?.split('.')?.last,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stars', instance.stars);
  val['commentary'] = instance.commentary;
  return val;
}

Human _$HumanFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const [
    'id',
    'name',
    'friendsConnection',
    'appearsIn'
  ]);
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

Map<String, dynamic> _$HumanToJson(Human instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['homePlanet'] = instance.homePlanet;
  val['height'] = instance.height;
  val['mass'] = instance.mass;
  val['friends'] = instance.friends?.map((e) => e?.toJson())?.toList();
  writeNotNull('friendsConnection', instance.friendsConnection?.toJson());
  writeNotNull(
      'appearsIn',
      instance.appearsIn
          ?.map((e) => e?.toString()?.split('.')?.last)
          ?.toList());
  val['starships'] = instance.starships?.map((e) => e?.toJson())?.toList();
  return val;
}

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
  $checkKeys(json, disallowNullValues: const ['id', 'name']);
  return new Starship(
      id: json['id'] as String,
      name: json['name'] as String,
      length: (json['length'] as num)?.toDouble(),
      coordinates: (json['coordinates'] as List)
          ?.map((e) => (e as num)?.toDouble())
          ?.toList());
}

Map<String, dynamic> _$StarshipToJson(Starship instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['length'] = instance.length;
  val['coordinates'] = instance.coordinates;
  return val;
}

StarshipLengthArgs _$StarshipLengthArgsFromJson(Map<String, dynamic> json) {
  return new StarshipLengthArgs(
      unit: $enumDecodeNullable(
          'LengthUnit', LengthUnit.values, json['unit'] as String));
}

Map<String, dynamic> _$StarshipLengthArgsToJson(StarshipLengthArgs instance) =>
    <String, dynamic>{'unit': instance.unit?.toString()?.split('.')?.last};

Droid _$DroidFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const [
    'id',
    'name',
    'friendsConnection',
    'appearsIn'
  ]);
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

Map<String, dynamic> _$DroidToJson(Droid instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['friends'] = instance.friends?.map((e) => e?.toJson())?.toList();
  writeNotNull('friendsConnection', instance.friendsConnection?.toJson());
  writeNotNull(
      'appearsIn',
      instance.appearsIn
          ?.map((e) => e?.toString()?.split('.')?.last)
          ?.toList());
  val['primaryFunction'] = instance.primaryFunction;
  return val;
}

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
  $checkKeys(json, disallowNullValues: const ['review']);
  return new MutationCreateReviewArgs(
      episode: $enumDecodeNullable(
          'Episode', Episode.values, json['episode'] as String),
      review: json['review'] == null
          ? null
          : new ReviewInput.fromJson(json['review'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MutationCreateReviewArgsToJson(
    MutationCreateReviewArgs instance) {
  var val = <String, dynamic>{
    'episode': instance.episode?.toString()?.split('.')?.last,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('review', instance.review?.toJson());
  return val;
}

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
  $checkKeys(json, disallowNullValues: const ['ep']);
  return new HeroForEpisodeVariables(
      ep: $enumDecodeNullable('Episode', Episode.values, json['ep'] as String));
}

Map<String, dynamic> _$HeroForEpisodeVariablesToJson(
    HeroForEpisodeVariables instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ep', instance.ep?.toString()?.split('.')?.last);
  return val;
}

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
  $checkKeys(json, disallowNullValues: const ['name']);
  return new HeroForEpisodeHero(name: json['name'] as String);
}

Map<String, dynamic> _$HeroForEpisodeHeroToJson(HeroForEpisodeHero instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

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
