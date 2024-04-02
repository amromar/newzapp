
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';


class ContentLoader extends StatelessWidget {
   ContentLoader({super.key});
  bool isLoading = true;
  List<ArticleModel> articles = [];

  @override


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return   Center(
      child: Container(

        alignment: Alignment.center,
        height: height/2,
        child: CircularProgressIndicator(
          color: Colors.orange,
        ),
      ),
    );
  }
}
