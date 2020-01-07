// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import './example_mixin.dart';
import 'package:starwars/graphql/schema.dart';

part 'search.gql.g.dart';

@JsonSerializable()
class SearchVariables {
  @JsonKey(required: false, disallowNullValue: false)
  String text;

  SearchVariables({
    this.text,
  });

  factory SearchVariables.fromJson(Map<String, dynamic> json) =>
      _$SearchVariablesFromJson(json);

  Map<String, dynamic> toJson() => _$SearchVariablesToJson(this);
}

@JsonSerializable()
class Search_StarshipInlineFragment extends Starship {
  static final String schemaTypeName = "Starship";

  @protected
  String typename;

  @JsonKey(name: r'id', required: true, disallowNullValue: true)
  String get id => fields.id;
  set id(String id) => fields.id = id;
  Search_StarshipInlineFragment({
    @required String id,
  }) : super(
          id: id,
        );

  Search_StarshipInlineFragment.empty();

  /// Creates a copy of this `Search_StarshipInlineFragment`
  Search_StarshipInlineFragment copy() =>
      Search_StarshipInlineFragment.empty()..addAll(this);

  /// Copies fields from [other] into a new `Search_StarshipInlineFragment`
  Search_StarshipInlineFragment.from(Starship other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    return missingFields;
  }

  /// Adds all fields from [other] to this `Search_StarshipInlineFragment`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant Search_StarshipInlineFragment other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory Search_StarshipInlineFragment.fromJson(Map<String, dynamic> json) {
    Search_StarshipInlineFragment instance =
        _$Search_StarshipInlineFragmentFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$Search_StarshipInlineFragmentToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

@JsonSerializable()
class SearchSearchCopyForTesting extends SearchResult {
  static final String schemaTypeName = "SearchResult";

  @protected
  String typename;

  SearchSearchCopyForTesting() : super();

  SearchSearchCopyForTesting.empty();

  /// Creates a copy of this `SearchSearchCopyForTesting`
  SearchSearchCopyForTesting copy() =>
      SearchSearchCopyForTesting.empty()..addAll(this);

  /// Copies fields from [other] into a new `SearchSearchCopyForTesting`
  SearchSearchCopyForTesting.from(SearchResult other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `SearchSearchCopyForTesting`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant SearchSearchCopyForTesting other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);

    if (other.onStarship != null) {
      onStarship ??= Search_StarshipInlineFragment.empty();
      onStarship.addAll(other.onStarship, overwrite: overwrite);
    }
  }

  @JsonKey(ignore: true)
  Search_StarshipInlineFragment onStarship;

  factory SearchSearchCopyForTesting.fromJson(Map<String, dynamic> json) {
    SearchSearchCopyForTesting instance =
        _$SearchSearchCopyForTestingFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    if (Search_StarshipInlineFragment.schemaTypeName == __typename) {
      instance.onStarship = Search_StarshipInlineFragment.fromJson(json);
    }
    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchSearchCopyForTestingToJson(this);
    json['__typename'] = typename;
    if (onStarship != null) {
      json.addAll(onStarship.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class SearchStarshipInlineFragment extends Starship {
  static final String schemaTypeName = "Starship";

  @protected
  String typename;

  @JsonKey(name: r'id', required: true, disallowNullValue: true)
  String get id => fields.id;
  set id(String id) => fields.id = id;
  SearchStarshipInlineFragment({
    @required String id,
  }) : super(
          id: id,
        );

  SearchStarshipInlineFragment.empty();

  /// Creates a copy of this `SearchStarshipInlineFragment`
  SearchStarshipInlineFragment copy() =>
      SearchStarshipInlineFragment.empty()..addAll(this);

  /// Copies fields from [other] into a new `SearchStarshipInlineFragment`
  SearchStarshipInlineFragment.from(Starship other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    return missingFields;
  }

  /// Adds all fields from [other] to this `SearchStarshipInlineFragment`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant SearchStarshipInlineFragment other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);
  }

  factory SearchStarshipInlineFragment.fromJson(Map<String, dynamic> json) {
    SearchStarshipInlineFragment instance =
        _$SearchStarshipInlineFragmentFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchStarshipInlineFragmentToJson(this);
    json['__typename'] = typename;

    return json;
  }
}

@JsonSerializable()
class SearchSearch extends SearchResult {
  static final String schemaTypeName = "SearchResult";

  @protected
  String typename;

  SearchSearch() : super();

  SearchSearch.empty();

  /// Creates a copy of this `SearchSearch`
  SearchSearch copy() => SearchSearch.empty()..addAll(this);

  /// Copies fields from [other] into a new `SearchSearch`
  SearchSearch.from(SearchResult other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `SearchSearch`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant SearchSearch other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);

    if (other.onStarship != null) {
      onStarship ??= SearchStarshipInlineFragment.empty();
      onStarship.addAll(other.onStarship, overwrite: overwrite);
    }
  }

  @JsonKey(ignore: true)
  SearchStarshipInlineFragment onStarship;

  factory SearchSearch.fromJson(Map<String, dynamic> json) {
    SearchSearch instance = _$SearchSearchFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    if (SearchStarshipInlineFragment.schemaTypeName == __typename) {
      instance.onStarship = SearchStarshipInlineFragment.fromJson(json);
    }
    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchSearchToJson(this);
    json['__typename'] = typename;
    if (onStarship != null) {
      json.addAll(onStarship.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class SearchQuery extends Query {
  static final String schemaTypeName = "query";

  @protected
  String typename;

  @JsonKey(name: r'search', required: false, disallowNullValue: false)
  List<SearchSearch> get search => fields.search;
  set search(List<SearchSearch> search) => fields.search = search;
  @JsonKey(
      name: r'__searchCopyForTesting',
      required: false,
      disallowNullValue: false)
  List<SearchSearchCopyForTesting> searchCopyForTesting;

  SearchQuery({
    List<SearchSearch> search,
    List<SearchSearchCopyForTesting> searchCopyForTesting,
  }) : super(
          search: search,
        ) {
    this.searchCopyForTesting = searchCopyForTesting;
  }

  SearchQuery.empty();

  /// Creates a copy of this `SearchQuery`
  SearchQuery copy() => SearchQuery.empty()..addAll(this);

  /// Copies fields from [other] into a new `SearchQuery`
  SearchQuery.from(Query other) {
    addAll(other);
  }

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Adds all fields from [other] to this `SearchQuery`.
  ///
  /// pre-existing values are not overwritten unless `overwrite: true`
  @override
  void addAll(
    covariant SearchQuery other, {
    bool overwrite = true,
  }) {
    super.addAll(other, overwrite: overwrite);

    if (overwrite != null && overwrite) {
      searchCopyForTesting = other.searchCopyForTesting ?? searchCopyForTesting;
    } else {
      searchCopyForTesting ??= other.searchCopyForTesting;
    }
  }

  factory SearchQuery.fromJson(Map<String, dynamic> json) {
    SearchQuery instance = _$SearchQueryFromJson(json);
    final __typename = json['__typename'];
    instance.typename = __typename;

    return instance;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchQueryToJson(this);
    json['__typename'] = typename;

    return json;
  }
}
