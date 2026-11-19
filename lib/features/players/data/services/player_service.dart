import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:fmt_app/features/players/data/models/player_model.dart';

class PlayerService {
  Future<List<Player>> fetchPlayers(String teamId) async {
    try {
      final String response =
          await rootBundle.loadString("assets/mock_data/players.json ");
      final List<dynamic> data = json.decode(response);

      return data.map((json) => Player.fromJson(json)).toList();
    } catch (e) {
      throw Exception("Mock maç verisi yüklenirken hata oluştu: $e");
    }

    /*  if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((player) => Player.fromJson(player)).toList();
    } else {
      throw Exception("Oyuncu bilgileri alınamadı");
    } */
  }
}
