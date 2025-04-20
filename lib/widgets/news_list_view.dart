import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articlesList;
  const NewsListView({super.key, required this.articlesList});
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: articlesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22.0),
          child: NewsTile(
            article: articlesList[index],
          ),
        );
      },
    );
  }
}
