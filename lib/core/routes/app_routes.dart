import 'package:flutter/material.dart';
import 'package:fmt_app/features/favorites/presentation/screens/favorite_selection_screen.dart';
import 'package:fmt_app/main_app.dart';


class AppRoutes {
  static const String initial = '/home';

  static final routes = <String, WidgetBuilder>{
    '/home': (context) => const MainApp(),
    '/favorites': (context) => const FavoriteSelectionScreen(),
    // Yeni rotalar burada tanımlanabilir
  };
}
