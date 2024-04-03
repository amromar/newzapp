
import 'package:flutter/material.dart';
import 'package:newzapp/models/article_model.dart';


class NewsTileWidget extends StatelessWidget {
  const NewsTileWidget({super.key,

    required this.articleModel,

  });

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            // rounded image container
              borderRadius: BorderRadius.circular(10),
              child: Image(image: NetworkImage (articleModel.imageUrl??'https://images.unsplash.com/photo-1504711434969-e33886168f5c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), height: 200, width: 400, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

            children: [
                Text(articleModel.title ?? '', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , ),textAlign: TextAlign.left, maxLines: 1,overflow: TextOverflow.ellipsis,),
                Text(articleModel.description??'No Data', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal ,color: Colors.grey ),textAlign: TextAlign.left, maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),

        ],
      ),
    );
  }
}