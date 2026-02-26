import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article.dart';

class NewsService {
  final String apiKey = '3128b5b32a1b4b9a8a13eb34fa41c098';
  final String baseUrl = 'https://newsapi.org/v2';

  Future<List<Article>> fetchTopHeadlines(String category) async {
    final response = await http.get(
      Uri.parse(
        '$baseUrl/top-headlines?country=us&category=$category&apiKey=$apiKey',
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List<Article> articles = (data['articles'] as List)
          .map((json) => Article.fromJson(json))
          .toList();
      return articles;
    } else {
      throw Exception('Failed to load news');
    }
  }
}
