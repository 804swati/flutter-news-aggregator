import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/news_provider.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NewsProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(), // <-- Start with welcome screen
      ),
    ),
  );
}
