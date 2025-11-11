import 'package:flutter/material.dart';
import 'package:new_news_app/widgets/newsListViewBuilder.dart';

class Categoryview extends StatelessWidget {
  final String category;
  String categoryName;
  Categoryview({required this.categoryName, required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            categoryName,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ));
  }
}
