import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzapp/models/news_tile_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key, required this.newsTileModel,
  });
final NewsTileModel newsTileModel ;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            // roundedn image container
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage (newsTileModel.imageUrl), height: 200, width: 400, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [
                Text(newsTileModel.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , ),textAlign: TextAlign.left, maxLines: 1,overflow: TextOverflow.ellipsis,),
                Text(newsTileModel.description, style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal ,color: Colors.grey ),textAlign: TextAlign.left, maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),

        ],
      ),
    );
  }
}