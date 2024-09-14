import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articalModel.image != null && articalModel.image!.isNotEmpty
              ? Image.network(
                  articalModel.image!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                )
              : Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.image_not_supported,
                    color: Colors.grey,
                    size: 50,
                  ),
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalModel.subtitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
