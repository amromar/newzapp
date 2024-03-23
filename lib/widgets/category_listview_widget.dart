import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card_widget.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key,});
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Business', image: 'assets/images/business.jpg'),
    CategoryModel(categoryName: 'Entertainment', image: 'assets/images/entertainment.jpg'),
    CategoryModel(categoryName: 'Health', image: 'assets/images/health.jpg'),
    CategoryModel(categoryName: 'Science', image: 'assets/images/science.jpg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/images/technology.jpg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/images/sports.jpg'),
    CategoryModel(categoryName: 'General', image: 'assets/images/general.jpg'),
  ];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
