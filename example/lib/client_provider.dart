import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

String uuidFromObject(Object object) {
  if (object is Map<String, Object>) {
    String typeName = object['__typename'] as String;
    String id = object['id'] as String;
    if (typeName != null && id != null) {
      return [typeName, id].join('/');
    }
  }
  return null;
}

final cache = NormalizedInMemoryCache(
  dataIdFromObject: uuidFromObject,
);

ValueNotifier<GraphQLClient> clientFor({@required String uri}) {
  return ValueNotifier(
    GraphQLClient(
      cache: cache,
      link: HttpLink(uri: uri),
    ),
  );
}

/// Wraps the root application with the `graphql_flutter` client.
/// We use the cache for all state management.
class ClientProvider extends StatelessWidget {
  final Widget child;
  final ValueNotifier<GraphQLClient> client;

  ClientProvider({
    @required this.child,
    @required String uri,
  }) : client = clientFor(uri: uri);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: child,
    );
  }
}
