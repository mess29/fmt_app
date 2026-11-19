import 'package:flutter/material.dart';
import 'package:fmt_app/features/home/presentation/widgets/countdown_timer.dart';
import 'package:fmt_app/features/home/presentation/widgets/favorite_team_section.dart';
import 'package:fmt_app/features/home/presentation/widgets/home_app_bar.dart';
import 'package:fmt_app/features/home/presentation/widgets/match_details_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(                              
      // AppBar: Custom SliverAppBar ile tasarlandı

      body: CustomScrollView(
        slivers: [
          const HomeAppBar(), // Uygulama çubuğu

          // İçerik Bölümü
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Favori Takım Bölümü
                FavoriteTeamSection(),
                // Sıradaki Maç Bölümü
                MatchDetailsSection(),
                // Geri Sayım
                CountdownTimer(),
                // Takım Kadrosu ve Saha Bilgileri
                TeamLineupSection(),
                TeamLineupSection(),
                TeamLineupSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




// Takım Kadrosu ve Saha Bilgileri
// ignore: must_be_immutable
class TeamLineupSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Takım Dizilimi:',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        Wrap(
          children: List.generate(
            11,
            (index) => Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text('Oyuncu ${index + 1}'),
            ),
          ),
        ),
      ],
    );
  }
}


