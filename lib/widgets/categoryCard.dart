import 'package:flutter/material.dart';
import 'package:new_news_app/model/categoryModel.dart';

import '../veiws/categoryView.dart';

class CategoryCard extends StatelessWidget {
  final Categorymodel category;
  const CategoryCard({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return Categoryview(
              category: category.categoryRequist,
              categoryName: category.categoryName,
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 8, 0),
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
