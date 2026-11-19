import 'package:flutter/material.dart';
import 'package:fmt_app/features/matches/data/services/match_service.dart';
import 'package:fmt_app/features/matches/data/models/match_model.dart';

class MatchViewmodel extends ChangeNotifier {
  final MatchService matchService;

  MatchViewmodel({required this.matchService});

  List<Match> matches = [];
  bool isLoading = false;

  Future<void> fetchMatches(String teamId) async {
    isLoading = true;
    notifyListeners();
  
  try{
    matches =  await matchService.fetchMatches(teamId);
  }catch (e) {
debugPrint("Hata $e");
  }finally{
    isLoading = true;
    notifyListeners();
  }


  }
}
