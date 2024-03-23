import 'package:flutter/material.dart';
import 'package:newzapp/views/home_view.dart';

void main() {
  runApp(const NewzApp());
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


