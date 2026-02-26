import 'package:flutter/material.dart';
import '../models/article.dart';
import '../services/news_service.dart';

class NewsProvider with ChangeNotifier {
  List<Article> articles = [];
  bool isLoading = false;

  Future<void> fetchNews(String category) async {
    isLoading = true;
    notifyListeners();

    try {
      articles = await NewsService().fetchTopHeadlines(category);
    } catch (e) {
      print('Error fetching news: $e');
    }

    isLoading = false;
    notifyListeners();
  }
}
