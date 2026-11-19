import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:fmt_app/core/data/models/team_model.dart';

class TeamService {
  Future<List<Team>> fetchTeam () async{
    final String response = await rootBundle.loadString('assets/mock_data/teams.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Team.fromJson(json)).toList(); 
  } 
}