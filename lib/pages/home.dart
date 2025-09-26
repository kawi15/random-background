import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_background/utils/functions/random_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  late Color color;

  @override
  void initState() {
    super.initState();
    color = randomColor();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            color = randomColor();
          });
        },
        child: Container(
          height: size.height,
          width: size.width,
          color: color,
          child: Center(
            child: Text(
                'Hello there'
            ),
          ),
        ),
      ),
    );
  }
}
