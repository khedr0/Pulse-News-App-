import 'package:flutter/material.dart';
import 'package:new_news_app/model/articleModel.dart';

import 'newsTile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> articale;
  const NewsTileListView({
    required this.articale,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: newsTile(articleModel: articale[index]),
          );
        },
        childCount: articale.length,
      ),
    );
  }
}
