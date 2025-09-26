import 'package:flutter/material.dart';
import 'package:random_background/pages/home.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget of the application
class MyApp extends StatelessWidget {

  ///Creates instance of the [MyApp]
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random background',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}
