import 'package:dio/dio.dart';
import 'package:newzapp/models/article_modle.dart';

class NewsService {
   final Dio dio;
    NewsService(this.dio);
Future<List<ArticleModel>> getGeneralNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=2d97bc486d194e2ab70ab1583796ec9c');
        Map<String,dynamic> jsonData = response.data;
        List<dynamic> articles= jsonData['articles'];
        List<ArticleModel>articleList=[];

  for(var article in articles) {

      ArticleModel articleModel = ArticleModel(
        source: Source(
          id: article['source']['id'],
          name: article['source']['name'],
        ),
        title: article['title'],
        description: article['description'],
        imageUrl: article['urlToImage'],
      );
      articleList.add(articleModel);
    }

  return articleList;

  }
}