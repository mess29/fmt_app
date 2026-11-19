import 'package:flutter/material.dart';
import 'package:fmt_app/features/team_details/presentation/screens/team_detail_screen.dart';

class FavoriteTeamSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String favoriteTeamId = "1"; // Favori takım ID'si
    final String favoriteTeamName = "Galatasaray"; // Favori takım ismi

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/icons/favorite_team_logo.png'),
      ),
      title: Text(favoriteTeamName),
      subtitle: const Text('Favori Takımınız'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TeamDetailScreen(teamId: favoriteTeamId),
          ),
        );
      },
    );
  }
}
