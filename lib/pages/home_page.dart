import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/category_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const customScrollView = CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CategoryListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        NewsListViewBuilder(
          category: 'general',
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'News',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: customScrollView,
        ));
  }
}
