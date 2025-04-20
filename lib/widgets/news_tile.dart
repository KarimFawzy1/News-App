import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/pages/news_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.article,
  });

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsView(
                article: article,
              );
            },
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title ?? "Title",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            article.subTitle ?? "SubTitle",
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: TextStyle(
                fontSize: 14,
                // fontWeight: FontWeight.w500,
                color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
