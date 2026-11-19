// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fmt_app/features/matches/data/services/match_service.dart';
import 'package:fmt_app/features/matches/viewmodels/match_viewmodel.dart';
import 'package:provider/provider.dart';

class MatchListScreen extends StatelessWidget {
  final String teamId;
  const MatchListScreen({
    Key? key,
    required this.teamId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          MatchViewmodel(matchService: MatchService())..fetchMatches(teamId),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Maç Listesi"),
        ),
        body: Consumer<MatchViewmodel>(
          builder: (context, viewModel, _) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (viewModel.matches.isEmpty) {
              return const Center(child: Text("Maç bulunamadı"));
            }
            return ListView.builder(
                itemCount: viewModel.matches.length,
                itemBuilder: (context, index) {
                  final match = viewModel.matches[index];
                  return ListTile(
                    title: Text("${match.homeTeam} vs ${match.awayTeam}"),
                    subtitle: Text("${match.date} - ${match.league}"),
                    trailing: Text(match.score),
                  );
                });
          },
        ),
      ),
    );
  }
}
