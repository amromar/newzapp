// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:newzapp/widgets/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category ;
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(top: 8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(category),

        ),
        body:CustomScrollView(

          slivers:[
           NewsListBuilder(category: category,),
          ]
        ),

      ),
    );
  }
}
