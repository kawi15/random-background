import 'package:flutter/material.dart';

/// Collection of [TextStyle] definitions
class TextStyleBase {

  /// Returns [TextStyle] for header [Text] in main page
  ///
  /// [textColor] parameter is required and it determines color of text.
  /// [fontSize] parameter is optional and set by default to 32.
  static TextStyle? header({
    required Color textColor,
    double fontSize = 32
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: textColor
    );
  }
}
