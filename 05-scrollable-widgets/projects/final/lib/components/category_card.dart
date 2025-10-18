import 'package:flutter/material.dart';

import '../models/food_category.dart';

class CategoryCard extends StatelessWidget {
  final FoodCategory category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8.0),
              ),
              child: Image.network(
                category.imageUrl,
                width: 200,
                height: 190,
                fit: BoxFit.cover,
              )),
          Expanded(
            child: ListTile(
              title: Text(
                category.name,
                style: textTheme.titleSmall,
              ),
              subtitle: Text(
                '${category.numberOfRestaurants} places',
                style: textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
