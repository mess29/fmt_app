import 'package:flutter/material.dart';
import 'package:fmt_app/features/team_details/data/models/team_detail_model.dart';
import 'package:fmt_app/features/team_details/data/services/team_detail_service.dart';

class TeamDetailViewmodel extends ChangeNotifier {
  TeamDetailModel? teamDetailModel;
  bool isLoading = false;

  Future<void> fetchTeamDetail(String teamId) async {
    isLoading = true;
    notifyListeners();
    try {
      teamDetailModel = await TeamDetailService().getTeamDetail(teamId);
    } catch (e) {
      debugPrint("Hata $e");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
