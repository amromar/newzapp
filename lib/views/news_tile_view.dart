import 'package:flutter/cupertino.dart';

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
  List<NewsTileModel> newsTail =[
    NewsTileModel(
      title: 'This is the titlefdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfsdfdsf',
      description: 'This is the descriptiondsfdfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfewrewrewrewrewrewrewrewghrtrthhsfdsfdsfdsfsdfdsfdsfds',
      imageUrl: 'assets/images/sports.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the description',
      imageUrl: 'assets/images/health.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the description',
      imageUrl: 'assets/images/general.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the description',
      imageUrl:'assets/images/business.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the descriptiondsfsdfdsfsdfsdfdsfds',
      imageUrl: 'assets/images/science.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the description',
      imageUrl: 'assets/images/entertainment.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the description',
      imageUrl: 'assets/images/business.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the description',
      imageUrl: 'assets/images/entertainment.jpg',
    ),
    NewsTileModel(
      title: 'This is the title',
      description: 'This is the description',
      imageUrl: 'assets/images/sports.jpg',
    ),

];

  @override
  Widget build(BuildContext context) {
    return  SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 14),
        child: NewsTile( newsTileModel: newsTail[index],),
      );
    }, childCount: newsTail.length),);
  }
}