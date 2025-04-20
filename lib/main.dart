import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/pages/home_page.dart';
// import 'package:news__app1/pages/homePage.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NewsCloud',
        home: HomePage());
  }
}
