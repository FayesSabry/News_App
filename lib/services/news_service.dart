import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=1488eff727dd4ad6afe07c1322adffc6&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticalModel> articalList = [];

      for (var article in articles) {
        ArticalModel artical = ArticalModel(
          title: article['title'],
          subtitle: article['description'],
          image: article['urlToImage'],
        );
        articalList.add(artical);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
