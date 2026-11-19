
import 'package:flutter/material.dart';
import 'package:fmt_app/core/data/models/team_model.dart';
import 'package:fmt_app/core/data/services/team_service.dart';

class TeamViewModel extends ChangeNotifier{
  final TeamService _teamService = TeamService();

List<Team> _teams = [];
List<Team> get clubTeams => _teams.where((team) => team.type == 'club').toList();
List<Team> get nationalTeams => _teams.where((team) => team.type == 'national').toList();

 Future<void> fetchTeam() async {
    _teams = await _teamService.fetchTeam();
    notifyListeners();
  }

}