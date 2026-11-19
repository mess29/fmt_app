import 'package:flutter/material.dart';
import 'package:fmt_app/core/widgets/bottom_nav_bar.dart';
import 'package:fmt_app/features/home/presentation/screens/home_screen.dart';
import 'package:fmt_app/features/news/presentation/screens/news_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const NewsScreen(),
    const Center(child: Text("Takip Sayfası")),
    const Center(child: Text("Ayarlar")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
