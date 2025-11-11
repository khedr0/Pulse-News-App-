import 'package:flutter/material.dart';
import 'package:new_news_app/model/articleModel.dart';

class newsTile extends StatelessWidget {
  const newsTile({required this.articleModel, super.key});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 8, left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // لون الظل وشفافيته
            blurRadius: 1, // مدى نعومة الظل
            // offset: Offset(4, 4), // اتجاه الظل (يمين وتحت)
          ),
        ],
        border: Border.all(
            color: Colors.grey, // اللون الرصاصي
            width: .5),
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                height: 180,
                articleModel.image ?? "",
              )),
          SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title ?? "title",
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTiltle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
