import 'package:flutter/material.dart';
import 'package:fmt_app/features/players/data/services/player_service.dart';

import 'package:fmt_app/features/players/viewmodels/player_viewmodel.dart';
import 'package:provider/provider.dart';

class PlayerStatsScreen extends StatelessWidget {
  final String teamId;

  const PlayerStatsScreen({super.key, required this.teamId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          PlayerViewModel(playerService: PlayerService())..fetchPlayers(teamId),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Oyuncu İstatistikleri"),
        ),
        body: Consumer<PlayerViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (viewModel.players.isEmpty) {
              return const Center(child: Text("Oyuncu bulunamadı"));
            }

            return ListView.builder(
              itemCount: viewModel.players.length,
              itemBuilder: (context, index) {
                final player = viewModel.players[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(player.photo),
                  ),
                  title: Text(player.name),
                  subtitle: Text("${player.position} - ${player.nationality}"),
                  trailing:
                      Text("Gol: ${player.goals}\nAsist: ${player.assists}"),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
