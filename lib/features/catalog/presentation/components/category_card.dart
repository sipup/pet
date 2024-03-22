import 'package:flutter/material.dart';
import 'package:pet/features/catalog/domain/category_entity.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Stack(
        children: [
          const Positioned.fill(
            child: ColoredBox(color: Colors.grey),
          ),
          Positioned.fill(child: Image.network(category.imageUrl)),
          Positioned(
              top: 8,
              left: 8,
              child: Text(
                category.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              )),
        ],
      ),
    );
  }
}
