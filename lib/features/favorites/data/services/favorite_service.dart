

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FavoriteService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future <void> saveFavorites(String team, String? nationalTeam) async{

    await _storage.write(key: "favorite_team", value: team );
    if(nationalTeam != null ){
      await _storage.write(key: "favorite_national_team", value: nationalTeam);
    }
  }
Future<Map<String, String?>> getFavorites() async{
final team =await _storage.read(key: "favorite_team");
final nationalTeam = await _storage.read(key: "favorite_national_team");
return {"team" : team, "nationalTeam"  : nationalTeam};
}
}
