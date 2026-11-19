
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fmt_app/features/team_details/data/models/team_detail_model.dart';


class TeamDetailService {
  Future<TeamDetailModel> getTeamDetail(String teamId) async {
    try {
      // Mock JSON dosyasını assets dizininden okuma
      final String response =
          await rootBundle.loadString('assets/mock_data/teams.json');

           print("JSON Verisi Yüklendi: $response"); // JSON VERİSİNİ KONTROL ET

      final Map<String, dynamic> data = jsonDecode(response);

      print("Takım ID'sine Göre Filtreleme Yapılıyor: $teamId");

      // Gelen veriyi filtrele ve teamId'ye göre eşleştir
    
    if(data.containsKey(teamId)){
       print("Takım Verisi Bulundu: ${data[teamId]}"); // VERİNİN GELİP GELMEDİĞİNİ
return TeamDetailModel.fromJson(data[teamId]);

    } else {
        throw Exception("Takım bulunamadı");
      }
    } catch (e) {
      print("Mock verisi yüklenirken hata oluştu: $e");
      throw Exception("Mock verisi yüklenirken hata oluştu: $e");
    }
  }
}
