import 'package:flutter/material.dart';
import 'package:fmt_app/features/players/data/services/player_service.dart';
import 'package:fmt_app/features/players/data/models/player_model.dart';

class PlayerViewModel extends ChangeNotifier {
  final PlayerService playerService;

  PlayerViewModel({required this.playerService});

  List<Player> players = [];
  bool isLoading = false;

  Future<void> fetchPlayers(String teamId) async {
    isLoading = true;
    notifyListeners();

    try {
      players = await playerService.fetchPlayers(teamId) ;
    } catch (e) {
      debugPrint("Hata: $e");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
