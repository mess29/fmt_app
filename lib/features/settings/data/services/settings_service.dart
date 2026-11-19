import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SettingsService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

   Future<void> saveSettings({
    required String? selectedTeam,
    required String? selectedNationalTeam,
    required int notificationCount,
    required List<int> notificationTimes,
  }) async {
await _storage.write(key: 'favoriteTeam', value: selectedTeam);
await _storage.write(key: 'nationalTeam', value: selectedNationalTeam);
await _storage.write(key: 'notificationCount', value: notificationCount.toString());
await _storage.write(key: 'notificationTimes', value: notificationTimes.join(','));

  }

Future<Map<String, dynamic>> getSettings() async{
   final favoriteTeam = await _storage.read(key: 'favoriteTeam');
    final nationalTeam = await _storage.read(key: 'nationalTeam');
    final notificationCount = int.tryParse(await _storage.read(key: 'notificationCount') ?? '3');
    final notificationTimes = (await _storage.read(key: 'notificationTimes'))
        ?.split(',')
        .map((time) => int.tryParse(time) ?? 0)
        .toList();

    return {
      'favoriteTeam': favoriteTeam,
      'nationalTeam': nationalTeam,
      'notificationCount': notificationCount,
      'notificationTimes': notificationTimes,
    };
  }
}


