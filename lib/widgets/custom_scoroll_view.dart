import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CustomScrollview extends StatelessWidget {
  const CustomScrollview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: CategoriesListview()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
        NewsListViewBuilder(category: 'general',),
      ],
    );
  }
}
