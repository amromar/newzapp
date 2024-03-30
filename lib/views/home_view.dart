import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/category_listview_widget.dart';
import 'news_tile_view.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Newz',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'App',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body:Padding(

        padding: EdgeInsets.all(8.0),
        child:Expanded(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Text('Search for news'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
               NewsTileView(),


            ],
          ),
        ),

      ),
    );
  }
}/*child:
        Column(
          children: [
            Container(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text('Search for news'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            CategoriesListView(),

            SizedBox(height: 10),


            NewsTileView(),
          ],
        ),*/






