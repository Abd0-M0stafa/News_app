// ignore: file_names
import 'package:dio/dio.dart';

import 'package:news_app/models/articleModel.dart';

class NewsService {
  Dio dio = Dio();

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=e133e547e2e549968758f7d0366de490&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } on Exception {
      return [];
    }
  }
}
