import 'dart:convert';
import 'package:flutter/material.dart';
import './graphql/hero_for_episode.gql.dart';
import './graphql/schema.dart';
import './typed_query.dart';

String format(DateTime date) =>
    '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

// TODO this uses inline fragments and those are broken
class HeroForEpisode extends StatelessWidget {
  final Episode episode;

  HeroForEpisode({@required this.episode});

  @override
  Widget build(BuildContext context) {
    return HeroForEpisodeTypedQuery(
      variables: HeroForEpisodeVariables(ep: episode),
      builder: ({loading, error, data}) {
        if (error != null) {
          return Text(error.toString());
        }

        if (loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Text(getPrettyJSONString(data.toJson()));
      },
    );
  }
}

class HeroForEpisodeTypedQuery extends StatelessWidget {
  const HeroForEpisodeTypedQuery({
    Key key,
    @required this.variables,
    @required this.builder,
  }) : super(key: key);

  final HeroForEpisodeVariables variables;
  final QueryChildBuilder<HeroForEpisodeQuery> builder;

  @override
  Widget build(BuildContext context) {
    return TypedQuery<HeroForEpisodeQuery>(
      documentName: 'hero_for_episode',
      dataFromJson:
          wrapFromJsonMap((json) => HeroForEpisodeQuery.fromJson(json)),
      variables: variables.toJson(),
      builder: builder,
    );
  }
}

String getPrettyJSONString(jsonObject) {
  var encoder = new JsonEncoder.withIndent("  ");
  return encoder.convert(jsonObject);
}
