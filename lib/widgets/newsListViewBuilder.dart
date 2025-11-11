import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_news_app/model/articleModel.dart';

import '../services/newsServices.dart';
import 'newsTileListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({required this.category, super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Newsservices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileListView(articale: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: const Center(
                  child: Text("Oops There was an ERROR , Try Later"),
                ),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                height:
                    MediaQuery.of(context).size.height / 2, // تحديد نصف الشاشة
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}
// isLoding
//     ? SliverToBoxAdapter(
//         child: SizedBox(
//           height:
//               MediaQuery.of(context).size.height / 2, // تحديد نصف الشاشة
//           child: Center(
//             child: CircularProgressIndicator(),
//           ),
//         ),
//       )
//     : articale.isNotEmpty
//         ? NewsTileListView(articale: articale)
//         : SliverToBoxAdapter(
//             child: SizedBox(
//                 height: MediaQuery.of(context).size.height / 2,
//                 child: Center(
//                     child: Text("Oops There was an ERROR , Try Later"))),
//           );
