// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../matches/data/models/match_model.dart';

class MatchCard extends StatelessWidget {
  final Match match;

  const MatchCard({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text('${match.homeTeam} vs ${match.awayTeam}'),
        subtitle: Text(match.date),
        trailing: Text(match.score),
      ),
    );
  }
}
