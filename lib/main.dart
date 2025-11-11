import 'package:flutter/material.dart';
import 'package:new_news_app/veiws/homeView.dart';

void main() {
  // Newsservices gettins = Newsservices(Dio());
  // gettins.getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeview(),
    );
  }
}
