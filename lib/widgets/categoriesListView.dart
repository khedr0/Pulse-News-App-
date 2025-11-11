import 'package:flutter/cupertino.dart';

import '../model/categoryModel.dart';
import 'categoryCard.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<Categorymodel> categories = const [
    Categorymodel(
        image: "assets/entertaiment.avif",
        categoryName: "entertaiment",
        categoryRequist: "entertainment"),
    Categorymodel(
        image: "assets/technology.jpeg",
        categoryName: "technology",
        categoryRequist: "technology"),
    Categorymodel(
        image: "assets/health.avif",
        categoryName: "health",
        categoryRequist: "health"),
    Categorymodel(
        image: "assets/science.avif",
        categoryName: "science",
        categoryRequist: "science"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
