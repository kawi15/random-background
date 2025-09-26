import 'package:flutter/material.dart';
import 'package:random_background/utils/functions/random_color.dart';
import 'package:random_background/utils/functions/text_color.dart';

/// Main page of the application
class HomePage extends StatefulWidget {
  /// Creates an instance of [HomePage]
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  late Color backgroundColor;
  late Color textColor;

  @override
  void initState() {
    super.initState();
    setColors();
  }

  void setColors() {
    backgroundColor = randomColor();
    textColor = textColorForBackground(backgroundColor);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(setColors),
        child: Container(
          height: size.height,
          width: size.width,
          color: backgroundColor,
          child: Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontSize: 32,
                color: textColor
              ),
            ),
          ),
        ),
      ),
    );
  }
}
