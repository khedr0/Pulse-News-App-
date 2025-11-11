import 'package:dio/dio.dart';
import 'package:new_news_app/model/articleModel.dart';

class Newsservices {
  final dio;

  Newsservices(this.dio);

  Future<List<ArticleModel>> getNews({required category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=2b335915f43b4349bdb71a301adc05bb&category=$category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            subTiltle: article['subTiltle'],
            title: article['description']);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
