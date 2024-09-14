import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widgets/categories_card.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({
    super.key,
  });

  final List<CategoriesModel> categories = const [
    CategoriesModel(
        image: 'assets/images/business.avif', categorieName: 'business'),
    CategoriesModel(
        image: "assets/images/health.avif", categorieName: 'Health'),
    CategoriesModel(
        image: "assets/images/science.avif", categorieName: 'Science'),
    CategoriesModel(
        image: "assets/images/sports.avif", categorieName: 'Sports'),
    CategoriesModel(
        image: "assets/images/technology.jpeg", categorieName: 'Technology'),
    CategoriesModel(
        image: "assets/images/entertaiment.avif",
        categorieName: 'entertainment'),
    CategoriesModel(
        image: "assets/images/general.avif", categorieName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoriesCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
