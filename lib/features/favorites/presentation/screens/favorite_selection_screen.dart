import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/viewmodels/team_viewmodel.dart';

class FavoriteSelectionScreen extends StatefulWidget {
  const FavoriteSelectionScreen({super.key});

  @override
  State<FavoriteSelectionScreen> createState() => _FavoriteSelectionScreenState();
}

class _FavoriteSelectionScreenState extends State<FavoriteSelectionScreen> {
  String? selectedTeam;
  String? selectedNationalTeam;

  @override
  void initState() {
    super.initState();
    context.read<TeamViewModel>().fetchTeam();
  }

  void saveFavorites() {
    if (selectedTeam == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lütfen bir favori takım seçin!')),
      );
      return;
    }

    // Favori takım ve milli takımı kaydet
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favori Takımlarını Seç')),
      body: Consumer<TeamViewModel>(
        builder: (context, teamViewModel, _) {
          if (teamViewModel.clubTeams.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Favori Takım Seçin',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: selectedTeam,
                  hint: const Text('Bir takım seçin'),
                  onChanged: (value) {
                    setState(() {
                      selectedTeam = value;
                    });
                  },
                  items: teamViewModel.clubTeams.map((team) {
                    return DropdownMenuItem(
                      value: team.name,
                      child: Text(team.name),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Milli Takım (Opsiyonel)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: selectedNationalTeam,
                  hint: const Text('Bir milli takım seçin'),
                  onChanged: (value) {
                    setState(() {
                      selectedNationalTeam = value;
                    });
                  },
                  items: teamViewModel.nationalTeams.map((team) {
                    return DropdownMenuItem(
                      value: team.name,
                      child: Text(team.name),
                    );
                  }).toList(),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: saveFavorites,
                  child: const Text('Kaydet ve Devam Et'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
