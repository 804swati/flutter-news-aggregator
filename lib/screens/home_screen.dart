import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/news_provider.dart';
import '../widgets/news_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'technology';
  final categories = ['technology', 'sports', 'business', 'entertainment'];

  @override
  void initState() {
    super.initState();
    Provider.of<NewsProvider>(
      context,
      listen: false,
    ).fetchNews(selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('NewsHub')),
      body: Column(
        children: [
          // Categories Tabs
          // In HomeScreen -> replace categories container with:
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories.map((category) {
                bool isSelected = category == selectedCategory;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    label: Text(category.toUpperCase()),
                    selected: isSelected,
                    onSelected: (_) {
                      setState(() => selectedCategory = category);
                      newsProvider.fetchNews(category);
                    },
                  ),
                );
              }).toList(),
            ),
          ),

          // News List
          Expanded(
            child: newsProvider.isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: newsProvider.articles.length,
                    itemBuilder: (context, index) {
                      final article = newsProvider.articles[index];
                      return NewsCard(
                        article: article,
                        index: index, // <--- pass index here
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailScreen(article: article),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
