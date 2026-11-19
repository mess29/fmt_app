import 'package:flutter/material.dart';
import 'package:fmt_app/core/constants/colors.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar(
      {super.key, required this.currentIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.appBarAndNavBar,
      selectedItemColor: AppColors.iconColorSelected,
      unselectedItemColor: AppColors.iconColorDefault,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Haberler"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "Takip"),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz), label: "Daha Fazla"),
      ],
      currentIndex: currentIndex,
      onTap: onItemTapped,
    );
  }
}




/* import 'package:flutter/material.dart';
import 'package:fmt_app/features/home/presentation/screens/home_screen.dart';
import 'package:fmt_app/features/news/presentation/screens/news_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = <Widget>[
    HomeScreen(),
    NewsScreen(),
    Center(
      child: Text("Takip Sayfası"),
    ),
    Center(
      child: Text("Ayarlar"),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('FMT App')),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: "Haberler"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Takip"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), label: "Daha Fazla"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
 */