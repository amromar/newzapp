import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzapp/models/article_model.dart';
import 'package:newzapp/services/news_service.dart';
import 'package:newzapp/widgets/content_loader_widget.dart';
import 'news_tile_widget.dart';

class NewsListBuilder extends StatefulWidget {
  final Key? key;

  NewsListBuilder({this.key}) : super(key: key);

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: NewsService(Dio()).getGeneralNews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 2,
                child: CircularProgressIndicator(
                  color: Colors.orange,
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 2,
                child: Text('Error Loading Data', style: TextStyle(color: Colors.orange) ,),
              ),
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: NewsTileWidget(articleModel: snapshot.data![index]),
                );
              },
              childCount: snapshot.data!.length,
            ),
          );
        }
      },
    );
  }
}
