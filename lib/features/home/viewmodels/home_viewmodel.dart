import 'package:flutter/material.dart';
import 'package:fmt_app/features/matches/data/services/match_service.dart';
import '../../matches/data/models/match_model.dart';

class HomeViewmodel extends ChangeNotifier {
  final MatchService _matchService = MatchService();

  List<Match> _matches = [];
  List<Match> get matches => _matches;

  Future<void> loadMatches() async {
    _matches = await _matchService.fetchMatches('1');
    notifyListeners();
  }
}
