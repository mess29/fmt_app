import 'package:flutter/material.dart';
import 'package:fmt_app/core/viewmodels/team_viewmodel.dart';
import 'package:provider/provider.dart';
import 'features/news/viewmodels/news_viewmodel.dart';
import 'my_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TeamViewModel()),
        ChangeNotifierProvider(create: (_) => NewsViewmodel()),
      ],
      child: const MyApp(),
    ),
  );
}
