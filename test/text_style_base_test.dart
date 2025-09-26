import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_background/utils/styles/text_styles.dart';

void main() {
  group('TextStyleBase', () {
    test('header returns correct TextStyle with given color', () {
      const color = Colors.yellow;
      final style = TextStyleBase.header(textColor: color);

      expect(style?.color, color);
      expect(style?.fontSize, 32);
    });

    test('header returns correct TextStyle with given color and fontSize', () {
      const color = Colors.blue;
      final style = TextStyleBase.header(textColor: color, fontSize: 16);

      expect(style?.color, color);
      expect(style?.fontSize, 16);
    });
  });
}
