import 'package:flutter/material.dart';
import './graphql/schema.dart';

typedef void OnSelect(Episode episode);

class EpisodeSelect extends StatelessWidget {
  final OnSelect onSelect;
  final Episode selected;

  EpisodeSelect({
    @required this.onSelect,
    @required this.selected,
  });
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Episode>(
      value: this.selected,
      onChanged: onSelect,
      items: Episode.values.map<DropdownMenuItem<Episode>>((Episode value) {
        return DropdownMenuItem<Episode>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }
}
