
import 'package:flutter/material.dart';
import 'package:newzapp/models/category_model.dart';

import '../views/category_view.dart';


class CategoryCard extends StatelessWidget {


    CategoryCard({super.key, required this.category }) ;
    final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.of(context).push(
         MaterialPageRoute(builder:(context) {
         return  CategoryView( category: category.categoryName,);
       },),
       );
      },
      child: Padding(
        padding:EdgeInsets.only(right: 16,bottom: 6),
        child: Container(
          height: 95,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage(category.image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken
              ),
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 1,
              ),
            ],
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
