import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:fmt_app/features/news/data/models/news_model.dart';

class NewsService {
  Future<List<News>> fetchNews() async {
    final String response =
        await rootBundle.loadString('assets/mock_data/news.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => News.fromJson(json)).toList();
  }
}
