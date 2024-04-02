import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzapp/main.dart';
import 'package:newzapp/models/article_modle.dart';
import 'package:newzapp/services/news_service.dart';

import '../models/news_tile_model.dart';
import '../widgets/news_tile_wedgit.dart';

class NewsTileView extends StatefulWidget {

   NewsTileView({
    super.key,
  });

  @override

  State<NewsTileView> createState() => _NewsTileViewState();
}

class _NewsTileViewState extends State<NewsTileView> {
  bool isLoading = true;
  List<ArticleModel> articles = [];

  @override
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
    double height = MediaQuery.of(context).size.height;
   
    return  isLoading ?  SliverToBoxAdapter(child: Center(
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
        child: NewsTile( articleModel: articles[index]),
      );
    }, childCount: articles.length),);
  }
}