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
  static final String typeName = "Starship";

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

  factory Search_StarshipInlineFragment.fromJson(Map<String, dynamic> json) =>
      _$Search_StarshipInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() =>
      _$Search_StarshipInlineFragmentToJson(this)..['__typename'] = typeName;
}

@JsonSerializable()
class SearchSearchCopyForTesting extends SearchResult {
  static final String typeName = "SearchResult";

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

  factory SearchSearchCopyForTesting.fromJson(Map<String, dynamic> json) =>
      _$SearchSearchCopyForTestingFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SearchSearchCopyForTestingToJson(this)..['__typename'] = typeName;
}

@JsonSerializable()
class SearchStarshipInlineFragment extends Starship {
  static final String typeName = "Starship";

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

  factory SearchStarshipInlineFragment.fromJson(Map<String, dynamic> json) =>
      _$SearchStarshipInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SearchStarshipInlineFragmentToJson(this)..['__typename'] = typeName;
}

@JsonSerializable()
class SearchSearch extends SearchResult {
  static final String typeName = "SearchResult";

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

  factory SearchSearch.fromJson(Map<String, dynamic> json) =>
      _$SearchSearchFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SearchSearchToJson(this)..['__typename'] = typeName;
}

@JsonSerializable()
class SearchQuery extends Query {
  static final String typeName = "query";

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

  factory SearchQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SearchQueryToJson(this)..['__typename'] = typeName;
}
