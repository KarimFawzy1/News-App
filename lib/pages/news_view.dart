import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsView extends StatelessWidget {
  final ArticleModel article;

  const NewsView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: article.source.name,
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' - ${article.author}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          overflow: TextOverflow.visible,
          softWrap: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                article.image ??
                    'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/hhfs9tf9mck02d8ilnqq',
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              article.title ?? "Title",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(article.content ?? "SubTitle"),
          ],
        ),
      ),
    );
  }
}
