import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newzapp/services/news_service.dart';
import 'package:newzapp/views/home_view.dart';

void main() {
  NewsService(dio).getGeneralNews();
  runApp(const NewzApp());

}
final dio = Dio();
void getNews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=2d97bc486d194e2ab70ab1583796ec9c');
  print(response);
}
class NewzApp extends StatelessWidget {
  const NewzApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewzApp',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}


