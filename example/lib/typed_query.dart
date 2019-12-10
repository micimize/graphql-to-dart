import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import './utils.dart';

typedef QueryChildBuilder<Data> = Widget Function({
  bool loading,
  Data data,
  Object error, // should be Exception
});

typedef FromJson<Data> = Data Function(dynamic json);

class TypedQuery<Data> extends StatelessWidget {
  final String documentName;
  final Map<String, Object> variables;
  final QueryChildBuilder<Data> builder;
  final bool catchLoading;

  final FromJson<Data> dataFromJson;

  TypedQuery({
    @required this.documentName,
    @required this.variables,
    @required this.builder,
    @required this.dataFromJson,
    this.catchLoading = true,
  });

  @override
  Widget build(BuildContext context) {
    return GQLProvider(documentName, (context, query, error) {
      if (error != null) {
        return builder(loading: false, error: error);
      }
      return Query(
        options: QueryOptions(
          documentNode: gql(query),
          variables: variables,
        ),
        builder: (QueryResult result, {fetchMore, refetch}) {
          if (result.data == null && result.loading && catchLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          Data data = null;
          try {
            if (result.data != null) {
              data = dataFromJson(result.data);
            }
          } catch (error, stack) {
            print('dataFromJson error when decoding result from $query!');
            print(error);
            print(stack);
          }
          return builder(
            loading: result.loading,
            error: result.exception,
            data: data,
          );
        },
      );
    });
  }
}

// utils for consumers
typedef FromJsonMap<Data> = Data Function(Map<String, Object> json);
typedef FromJsonList<Data> = Data Function(List<dynamic> json);
FromJson<Data> wrapFromJsonMap<Data>(FromJsonMap<Data> fromMap) {
  return (dynamic json) => json is Map<String, Object> ? fromMap(json) : null;
}

FromJson<Data> wrapFromJsonList<Data>(FromJsonList<Data> fromList) {
  return (dynamic json) => json is List<dynamic> ? fromList(json) : null;
}
