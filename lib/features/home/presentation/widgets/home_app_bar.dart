import 'package:flutter/material.dart';
import 'package:fmt_app/core/constants/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            backgroundColor: AppColors.appBarAndNavBar,
            floating: false,
            pinned: true,
            expandedHeight: 150.0,
            toolbarHeight: 50,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/app_logo.png',
                      height: 75,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PopupMenuButton<String>(
                            icon: Icon(
                              Icons.sports_soccer_outlined,
                              color: Colors.red,
                            ),
                            onSelected: (value) {
                              // Spor branşı seçimi
                            },
                            itemBuilder: (context) {
                              return [
                                const PopupMenuItem(
                                  value: "Futbol",
                                  child: Text("Futbol"),
                                ),
                                const PopupMenuItem(
                                  value: "Basketbol",
                                  child: Text("Basketbol"),
                                ),
                              ];
                            },
                          ),
                          Switch(
                            value: true, // Canlı/Canlı Değil toggle
                            onChanged: (value) {
                              // Durum değiştirme
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.calendar_today),
                            onPressed: () {
                              // Takvim işlevi
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              // Arama işlevi
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: Text("SKORLARIM")),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  WidgetStatePropertyAll(Colors.white),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.transparent),
                              elevation: WidgetStatePropertyAll(0),
                              side: WidgetStatePropertyAll(
                                BorderSide(
                                  width: 1,
                                  color: Colors.blue,
                                ),
                              ),
                              shadowColor:
                                  WidgetStateProperty.all(Colors.transparent)),
                          onPressed: () {},
                          child: Text(
                            "TÜM SKORLAR",
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}