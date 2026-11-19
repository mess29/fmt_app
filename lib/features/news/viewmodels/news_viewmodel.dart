import 'package:flutter/foundation.dart';
import 'package:fmt_app/features/news/data/models/news_model.dart';
import 'package:fmt_app/features/news/data/services/news_service.dart';

class NewsViewmodel  extends ChangeNotifier{

  final NewsService _newsService = NewsService();

  List <News> _newsList = [];

  List<News> get  newsList => _newsList;

  Future <void> loadNews () async{
    _newsList = await _newsService.fetchNews();
    notifyListeners();
    
  }
}