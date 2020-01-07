// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.gql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchVariables _$SearchVariablesFromJson(Map<String, dynamic> json) {
  return SearchVariables(
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$SearchVariablesToJson(SearchVariables instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

Search_StarshipInlineFragment _$Search_StarshipInlineFragmentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['id'], disallowNullValues: const ['id']);
  return Search_StarshipInlineFragment(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$Search_StarshipInlineFragmentToJson(
    Search_StarshipInlineFragment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

SearchSearchCopyForTesting _$SearchSearchCopyForTestingFromJson(
    Map<String, dynamic> json) {
  return SearchSearchCopyForTesting();
}

Map<String, dynamic> _$SearchSearchCopyForTestingToJson(
        SearchSearchCopyForTesting instance) =>
    <String, dynamic>{};

SearchStarshipInlineFragment _$SearchStarshipInlineFragmentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['id'], disallowNullValues: const ['id']);
  return SearchStarshipInlineFragment(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$SearchStarshipInlineFragmentToJson(
    SearchStarshipInlineFragment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

SearchSearch _$SearchSearchFromJson(Map<String, dynamic> json) {
  return SearchSearch();
}

Map<String, dynamic> _$SearchSearchToJson(SearchSearch instance) =>
    <String, dynamic>{};

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) {
  return SearchQuery(
    search: (json['search'] as List)
        ?.map((e) =>
            e == null ? null : SearchSearch.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchCopyForTesting: (json['__searchCopyForTesting'] as List)
        ?.map((e) => e == null
            ? null
            : SearchSearchCopyForTesting.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SearchQueryToJson(SearchQuery instance) =>
    <String, dynamic>{
      'search': instance.search?.map((e) => e?.toJson())?.toList(),
      '__searchCopyForTesting':
          instance.searchCopyForTesting?.map((e) => e?.toJson())?.toList(),
    };
