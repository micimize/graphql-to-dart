// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';
import 'package:starwars/graphql/schema.dart';
import 'package:starwars/graphql/_human_fragment.gql.dart';

export 'package:starwars/graphql/_human_fragment.gql.dart';

part 'hero_for_episode.gql.g.dart';

@JsonSerializable()
class HeroForEpisodeVariables {
  @JsonKey(required: true, disallowNullValue: true)
  Episode ep;

  HeroForEpisodeVariables({
    @required this.ep,
  });

  factory HeroForEpisodeVariables.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeVariablesFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeVariablesToJson(this);
}

@JsonSerializable()
class HeroForEpisodeHumanInlineFragment extends Human with Info, Relationships {
  static final String schemaTypeName = "Human";

  @protected
  String typename;

  @JsonKey(name: r'appearsIn', required: true, disallowNullValue: true)
  List<Episode> get appearsIn => fields.appearsIn;
  set appearsIn(List<Episode> appearsIn) => fields.appearsIn = appearsIn;
  HeroForEpisodeHumanInlineFragment({
    @required List<Episode> appearsIn,
    double height,
    double mass,
    String home,
    String planet,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) : super(
          appearsIn: appearsIn,
          height: height,
          mass: mass,
          homePlanet: home,
          friends: friends,
          starships: starships,
        ) {
    this.planet = planet;
  }

  HeroForEpisodeHumanInlineFragment.empty();

  /// Creates a copy of this `HeroForEpisodeHumanInlineFragment`
  HeroForEpisodeHumanInlineFragment copy() =>
      HeroForEpisodeHumanInlineFragment.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeHumanInlineFragment`
  HeroForEpisodeHumanInlineFragment.from(Human other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  /// Adds all fields from [other] to this `HeroForEpisodeHumanInlineFragment`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant HeroForEpisodeHumanInlineFragment other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);

    if (overwrite != null && overwrite) {
      planet = other.planet ?? planet;
    } else {
      planet ??= other.planet;
    }
  }

  factory HeroForEpisodeHumanInlineFragment.fromJson(
      Map<String, dynamic> json) {
    HeroForEpisodeHumanInlineFragment instance =
        _$HeroForEpisodeHumanInlineFragmentFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeHumanInlineFragmentToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeDroidInlineFragment extends Droid {
  static final String schemaTypeName = "Droid";

  @protected
  String typename;

  @JsonKey(name: r'primaryFunction', required: false, disallowNullValue: false)
  String get primaryFunction => fields.primaryFunction;
  set primaryFunction(String primaryFunction) =>
      fields.primaryFunction = primaryFunction;
  HeroForEpisodeDroidInlineFragment({
    String primaryFunction,
  }) : super(
          primaryFunction: primaryFunction,
        );

  HeroForEpisodeDroidInlineFragment.empty();

  /// Creates a copy of this `HeroForEpisodeDroidInlineFragment`
  HeroForEpisodeDroidInlineFragment copy() =>
      HeroForEpisodeDroidInlineFragment.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeDroidInlineFragment`
  HeroForEpisodeDroidInlineFragment.from(Droid other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `HeroForEpisodeDroidInlineFragment`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant HeroForEpisodeDroidInlineFragment other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory HeroForEpisodeDroidInlineFragment.fromJson(
      Map<String, dynamic> json) {
    HeroForEpisodeDroidInlineFragment instance =
        _$HeroForEpisodeDroidInlineFragmentFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeDroidInlineFragmentToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeHero extends Character with HelloMixin {
  static final String schemaTypeName = "Character";

  @protected
  String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;
  set name(String name) => fields.name = name;
  HeroForEpisodeHero({
    @required String name,
  }) : super(
          name: name,
        );

  HeroForEpisodeHero.empty();

  /// Creates a copy of this `HeroForEpisodeHero`
  HeroForEpisodeHero copy() => HeroForEpisodeHero.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeHero`
  HeroForEpisodeHero.from(Character other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Adds all fields from [other] to this `HeroForEpisodeHero`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant HeroForEpisodeHero other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);

    if (other.onDroid != null) {
      onDroid ??= HeroForEpisodeDroidInlineFragment.empty();
      onDroid.addAll(other.onDroid, overwrite: overwrite);
    }
    if (other.onHuman != null) {
      onHuman ??= HeroForEpisodeHumanInlineFragment.empty();
      onHuman.addAll(other.onHuman, overwrite: overwrite);
    }
  }

  @JsonKey(ignore: true)
  HeroForEpisodeDroidInlineFragment onDroid;
  @JsonKey(ignore: true)
  HeroForEpisodeHumanInlineFragment onHuman;

  factory HeroForEpisodeHero.fromJson(Map<String, dynamic> json) {
    HeroForEpisodeHero instance = _$HeroForEpisodeHeroFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    if (HeroForEpisodeDroidInlineFragment.schemaTypeName == __typename) {
      instance.onDroid = HeroForEpisodeDroidInlineFragment.fromJson(json);
    }
    if (HeroForEpisodeHumanInlineFragment.schemaTypeName == __typename) {
      instance.onHuman = HeroForEpisodeHumanInlineFragment.fromJson(json);
    }
    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeHeroToJson(this);
    json['__typename'] = typename;
    if (onDroid != null) {
      json.addAll(onDroid.toJson());
    }
    if (onHuman != null) {
      json.addAll(onHuman.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeQuery extends Query {
  static final String schemaTypeName = "query";

  @protected
  String typename;

  @JsonKey(name: r'hero', required: false, disallowNullValue: false)
  HeroForEpisodeHero get hero => fields.hero;
  set hero(HeroForEpisodeHero hero) => fields.hero = hero;
  HeroForEpisodeQuery({
    HeroForEpisodeHero hero,
  }) : super(
          hero: hero,
        );

  HeroForEpisodeQuery.empty();

  /// Creates a copy of this `HeroForEpisodeQuery`
  HeroForEpisodeQuery copy() => HeroForEpisodeQuery.empty()..addAll(this);

  /// Copies fields from [other] into a new `HeroForEpisodeQuery`
  HeroForEpisodeQuery.from(Query other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `HeroForEpisodeQuery`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant HeroForEpisodeQuery other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory HeroForEpisodeQuery.fromJson(Map<String, dynamic> json) {
    HeroForEpisodeQuery instance = _$HeroForEpisodeQueryFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeQueryToJson(this);
    json['__typename'] = typename;

    return json;
  }
}
