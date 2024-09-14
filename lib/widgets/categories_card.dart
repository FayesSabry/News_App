import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.category});
  final CategoriesModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.categorieName,
            appbarTitle: category.categorieName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.cover,
            ),
          ),
          width: 220,
          height: 130,
          child: Center(
            child: Text(
              category.categorieName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
