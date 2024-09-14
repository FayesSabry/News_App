import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articals;
  const NewsListView({super.key, required this.articals});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: NewsTile(
              articalModel: articals[index],
            ),
          );
        },
      ),
    );
  }
}
