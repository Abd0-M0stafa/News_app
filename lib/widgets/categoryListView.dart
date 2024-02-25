import 'package:flutter/material.dart';

import '../models/categoriesModel.dart';
import 'categoryCard.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  List<CategoriesModel> categories = const [
    CategoriesModel(categoryName: 'science', categoryURL: 'images/science.jpg'),
    CategoriesModel(
        categoryName: 'entertainment',
        categoryURL: 'images/entertainment .jpg'),
    CategoriesModel(
        categoryName: 'business', categoryURL: 'images/business.png'),
    CategoriesModel(categoryName: 'health', categoryURL: 'images/health.jpg'),
    CategoriesModel(categoryName: 'sports', categoryURL: 'images/sports.jpg'),
    CategoriesModel(
        categoryName: 'technology', categoryURL: 'images/technology.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
