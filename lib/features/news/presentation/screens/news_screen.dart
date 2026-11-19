// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fmt_app/core/constants/colors.dart';
import 'package:provider/provider.dart';
import 'package:fmt_app/features/news/data/models/news_model.dart';
import 'package:fmt_app/features/news/viewmodels/news_viewmodel.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewsViewmodel()..loadNews(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Haberler'), backgroundColor: AppColors.appBarAndNavBar,),
        body: Consumer<NewsViewmodel>(builder: (context, viewModel, _) {
          if (viewModel.newsList.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
              itemCount: viewModel.newsList.length,
              itemBuilder: (context, index) {
                final news = viewModel.newsList[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(news.title),
                    subtitle: Text(news.date),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => NewsDetailSecreen(news: news)));
                    },
                  ),
                );
              });
        }),
      ),
    );
  }
}

class NewsDetailSecreen extends StatelessWidget {
  final News news;

  const NewsDetailSecreen({
    super.key,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Haber Detayı'), backgroundColor: AppColors.appBarAndNavBar,),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                news.title,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(news.date, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 20),
              Text(news.content, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ));
  }
}
