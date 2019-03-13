import 'package:flutter/material.dart';
import './starwars_graphql_serializers.dart';
import './typed_query.dart';

String format(DateTime date) =>
    '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

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
        final events = data.schedule.events.map(
          (node) {
            return EventOccurrence(
              event: node.sourceEvent,
              occurrence: node.occurrence,
              start: node.start,
              end: node.end,
            );
          },
        ).toList();

        final implicitMetrics = data.implicitMetrics.metrics
            .map((metric) => FullMetric.copy(metric))
            .toList();

        return HeroForEpisodeRecorderList(
          events: events,
          implicitMetrics: implicitMetrics,
          date: date,
        );
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
      documentName: 'GetHeroForEpisode',
      dataFromJson: wrapFromJsonMap(HeroForEpisodeQuery.deserializeFromJson),
      variables: variables.toJson(),
      builder: builder,
    );
  }
}
