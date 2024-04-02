import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzapp/widgets/content_loader_widget.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_tile_widget.dart';

class NewsListBuilder extends StatefulWidget {

   NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  bool isLoading = true;
  List<ArticleModel> articles = [];
  void initState()  {
    super.initState();
    initNews();

  }
  Future<void> initNews() async {
    List<ArticleModel> articles= await NewsService(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {
      this.articles = articles;
    });
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ?
    SliverToBoxAdapter(child:ContentLoader()): SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 14),
        child: NewsTileWidget( articleModel: articles[index]),
      );
    }, childCount: articles.length),);
  }
}
