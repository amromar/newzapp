import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzapp/models/article_model.dart';
import 'package:newzapp/services/news_service.dart';
import 'package:newzapp/widgets/news_list_builder.dart';
import '../widgets/news_tile_widget.dart';

class NewsListWidget extends StatefulWidget {
  final List<ArticleModel> articles;
   NewsListWidget.NewsListWidget({
    super.key, required this.articles,


  });

  @override

  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {

  List<ArticleModel> articles = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
   
    return NewsListBuilder();
  }
}