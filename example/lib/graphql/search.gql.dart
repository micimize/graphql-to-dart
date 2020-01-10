// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:starwars/graphql/schema.dart';

part 'search.gql.g.dart';

@JsonSerializable()
class SearchVariables {
  @JsonKey(required: false, disallowNullValue: false)
  final String text;

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

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'id', required: true, disallowNullValue: true)
  String get id => fields.id;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  Search_StarshipInlineFragment({
    this.typename,
    @required String id,
  }) : super(
          id: id,
        );

  Search_StarshipInlineFragment.partial({
    this.typename,
    String id,
  }) : super(
          id: id,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    return missingFields;
  }

  /// Creates a new `Search_StarshipInlineFragment` with the given non-null values overridden
  Search_StarshipInlineFragment copyWith({
    String typename,
    String id,
  }) =>
      Search_StarshipInlineFragment(
        typename: typename ?? this.typename,
        id: id ?? this.id,
      );

  /// Creates a new `Search_StarshipInlineFragment` with non-null values from [other] as attribute overrides
  Search_StarshipInlineFragment mergeLeftWith(
      covariant Search_StarshipInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      id: other.id,
    );
  }

  /// Creates a new `Search_StarshipInlineFragment` with non-null values from [other] as attribute defaults
  Search_StarshipInlineFragment mergedRightWith(
      covariant Search_StarshipInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory Search_StarshipInlineFragment.fromJson(Map<String, dynamic> json) =>
      _$Search_StarshipInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$Search_StarshipInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class SearchSearchCopyForTesting extends SearchResult {
  static final String schemaTypeName = "SearchResult";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(ignore: true)
  final Search_StarshipInlineFragment onStarship;

  @override
  List<Object> get props => [
        ...super.props,
        onStarship,
      ];

  SearchSearchCopyForTesting({
    this.typename,
    this.onStarship,
  }) : super();

  SearchSearchCopyForTesting.partial({
    this.typename,
    this.onStarship,
  }) : super();

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `SearchSearchCopyForTesting` with the given non-null values overridden
  SearchSearchCopyForTesting copyWith({
    String typename,
    Search_StarshipInlineFragment onStarship,
  }) =>
      SearchSearchCopyForTesting(
        typename: typename ?? this.typename,
        onStarship: onStarship != null
            ? this.onStarship?.mergedLeftWith(onStarship) ?? onStarship
            : this.onStarship,
      );

  /// Creates a new `SearchSearchCopyForTesting` with non-null values from [other] as attribute overrides
  SearchSearchCopyForTesting mergeLeftWith(
      covariant SearchSearchCopyForTesting other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      onStarship: onStarship,
    );
  }

  /// Creates a new `SearchSearchCopyForTesting` with non-null values from [other] as attribute defaults
  SearchSearchCopyForTesting mergedRightWith(
      covariant SearchSearchCopyForTesting other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory SearchSearchCopyForTesting.fromJson(Map<String, dynamic> json) =>
      _$SearchSearchCopyForTestingFromJson(json).copyWith(
        onStarship:
            Search_StarshipInlineFragment.schemaTypeName == json['__typename']
                ? Search_StarshipInlineFragment.fromJson(json)
                : null,
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchSearchCopyForTestingToJson(this);

    if (onStarship != null) {
      json.addAll(onStarship.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class SearchStarshipInlineFragment extends Starship {
  static final String schemaTypeName = "Starship";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'id', required: true, disallowNullValue: true)
  String get id => fields.id;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  SearchStarshipInlineFragment({
    this.typename,
    @required String id,
  }) : super(
          id: id,
        );

  SearchStarshipInlineFragment.partial({
    this.typename,
    String id,
  }) : super(
          id: id,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    return missingFields;
  }

  /// Creates a new `SearchStarshipInlineFragment` with the given non-null values overridden
  SearchStarshipInlineFragment copyWith({
    String typename,
    String id,
  }) =>
      SearchStarshipInlineFragment(
        typename: typename ?? this.typename,
        id: id ?? this.id,
      );

  /// Creates a new `SearchStarshipInlineFragment` with non-null values from [other] as attribute overrides
  SearchStarshipInlineFragment mergeLeftWith(
      covariant SearchStarshipInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      id: other.id,
    );
  }

  /// Creates a new `SearchStarshipInlineFragment` with non-null values from [other] as attribute defaults
  SearchStarshipInlineFragment mergedRightWith(
      covariant SearchStarshipInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory SearchStarshipInlineFragment.fromJson(Map<String, dynamic> json) =>
      _$SearchStarshipInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchStarshipInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class SearchSearch extends SearchResult {
  static final String schemaTypeName = "SearchResult";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(ignore: true)
  final SearchStarshipInlineFragment onStarship;

  @override
  List<Object> get props => [
        ...super.props,
        onStarship,
      ];

  SearchSearch({
    this.typename,
    this.onStarship,
  }) : super();

  SearchSearch.partial({
    this.typename,
    this.onStarship,
  }) : super();

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `SearchSearch` with the given non-null values overridden
  SearchSearch copyWith({
    String typename,
    SearchStarshipInlineFragment onStarship,
  }) =>
      SearchSearch(
        typename: typename ?? this.typename,
        onStarship: onStarship != null
            ? this.onStarship?.mergedLeftWith(onStarship) ?? onStarship
            : this.onStarship,
      );

  /// Creates a new `SearchSearch` with non-null values from [other] as attribute overrides
  SearchSearch mergeLeftWith(covariant SearchSearch other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      onStarship: onStarship,
    );
  }

  /// Creates a new `SearchSearch` with non-null values from [other] as attribute defaults
  SearchSearch mergedRightWith(covariant SearchSearch other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory SearchSearch.fromJson(Map<String, dynamic> json) =>
      _$SearchSearchFromJson(json).copyWith(
        onStarship:
            SearchStarshipInlineFragment.schemaTypeName == json['__typename']
                ? SearchStarshipInlineFragment.fromJson(json)
                : null,
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchSearchToJson(this);

    if (onStarship != null) {
      json.addAll(onStarship.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class SearchQuery extends Query {
  static final String schemaTypeName = "query";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'search', required: false, disallowNullValue: false)
  List<SearchSearch> get search => fields.search;
  @JsonKey(
      name: r'__searchCopyForTesting',
      required: false,
      disallowNullValue: false)
  final List<SearchSearchCopyForTesting> searchCopyForTesting;

  @override
  List<Object> get props => [
        ...super.props,
        searchCopyForTesting,
      ];

  SearchQuery({
    this.typename,
    List<SearchSearch> search,
    this.searchCopyForTesting,
  }) : super(
          search: search,
        );

  SearchQuery.partial({
    this.typename,
    List<SearchSearch> search,
    this.searchCopyForTesting,
  }) : super(
          search: search,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new `SearchQuery` with the given non-null values overridden
  SearchQuery copyWith({
    String typename,
    List<SearchSearch> search,
    List<SearchSearchCopyForTesting> searchCopyForTesting,
  }) =>
      SearchQuery(
        typename: typename ?? this.typename,
        search: search ?? this.search,
        searchCopyForTesting: searchCopyForTesting ?? this.searchCopyForTesting,
      );

  /// Creates a new `SearchQuery` with non-null values from [other] as attribute overrides
  SearchQuery mergeLeftWith(covariant SearchQuery other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      search: other.search,
      searchCopyForTesting: other.searchCopyForTesting,
    );
  }

  /// Creates a new `SearchQuery` with non-null values from [other] as attribute defaults
  SearchQuery mergedRightWith(covariant SearchQuery other) {
    assert(other != null, "$this Cannot be merged with null");
    return other.mergedLeftWith(this);
  }

  factory SearchQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchQueryToJson(this);

    return json;
  }
}
