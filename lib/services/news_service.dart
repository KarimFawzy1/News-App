import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?category=$category&apiKey=77f2e314bfdb4a99ba873834498168e2');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
