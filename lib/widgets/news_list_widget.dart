import 'package:flutter/cupertino.dart';
import '../models/article_model.dart';
import 'news_tile_widget.dart';

class NewsListWidget extends StatelessWidget {
  List<ArticleModel> articles;

   NewsListWidget({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 14),
        child: NewsTileWidget( articleModel: articles[index]),
      );
    }, childCount: articles.length),);
  }
}
