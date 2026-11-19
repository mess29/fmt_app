import 'dart:convert';
import '../models/match_model.dart';
import 'package:flutter/services.dart';

class MatchService {
  Future<List<Match>> fetchMatches(String teamId) async {
    // Fetch matches from API
    try {
      final String response =
          await rootBundle.loadString('assets/mock_data/matches.json');
      final List<dynamic> data = json.decode(response);
      return data.map((json) => Match.fromJson(json)).toList();
    } catch (e) {
      throw Exception("Mock maç verisi yüklenirken hata oluştu: $e");
    }
  }
}
