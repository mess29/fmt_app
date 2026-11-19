import 'package:flutter/material.dart';
import 'package:fmt_app/features/team_details/viewmodels/team_detail_viewmodel.dart';
import 'package:provider/provider.dart';

class TeamDetailScreen extends StatelessWidget {
  final String teamId;

  const TeamDetailScreen({super.key, required this.teamId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TeamDetailViewmodel()..fetchTeamDetail(teamId),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Consumer<TeamDetailViewmodel>(
                    builder: (context, viewModel, _) {
                      if (viewModel.teamDetailModel == null) {
                        return const Text("Takım Bilgisi Yok");
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            viewModel.teamDetailModel!.logo,
                            height: 40,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            viewModel.teamDetailModel!.name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                bottom: const TabBar(
                  tabs: [
                    Tab(text: "Ayrıntılar"),
                    Tab(text: "Takım Haberleri"),
                    Tab(text: "Takım Oyuncuları"),
                  ],
                ),
              ),
            ],
            body: Consumer<TeamDetailViewmodel>(
              builder: (context, viewModel, _) {
                if (viewModel.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (viewModel.teamDetailModel == null) {
                  return const Center(child: Text("Takım bilgisi bulunamadı"));
                }
                final team = viewModel.teamDetailModel!;
                return TabBarView(
                  children: [
                    _buildMatchDetails(team),
                    _buildTeamNews(),
                    _buildTeamPlayers(team),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMatchDetails(team) {
    return Center(child: Text("Takım Maçları Buraya Gelecek"));
  }

  Widget _buildTeamNews() {
    return Center(child: Text("Takım Haberleri Buraya Gelecek"));
  }

  Widget _buildTeamPlayers(team) {
    return Center(child: Text("Takım Oyuncu Listesi Buraya Gelecek"));
  }
}
