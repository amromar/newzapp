import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzapp/models/article_model.dart';
import 'package:newzapp/services/news_service.dart';
import '../widgets/news_tile_widget.dart';

class NewsListWidget extends StatefulWidget {

  NewsListWidget.NewsListWidget({
    super.key,
  });

  @override

  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  bool isLoading = true;
  List<ArticleModel> articles = [];

  @override
  void initState()  {
    super.initState();
    initNews();

  }
  Future<void> initNews() async {
    List<ArticleModel> articles= await NewsService(Dio()).getNews(  country: 'us', category: 'general');
    isLoading = false;
    setState(() {
      this.articles = articles;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return  isLoading ?
    SliverToBoxAdapter(child: Center(
      child: Container(

        alignment: Alignment.center,
        height: height/2,
        child: CircularProgressIndicator(
          color: Colors.orange,
        ),
      ),
    ),

    ): SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 14),
        child: NewsTileWidget( articleModel: articles[index]),
      );
    }, childCount: articles.length),);
  }
}