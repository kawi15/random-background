import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_background/utils/functions/text_color.dart';

void main() {
  group('textColorForBackground', () {
    test('returns Colors.black for bright background', () {
      const brightColor = Colors.yellow;
      final result = textColorForBackground(brightColor);

      expect(result, Colors.black);
    });

    test('returns Colors.white for dark background', () {
      const darkColor = Colors.black;
      final result = textColorForBackground(darkColor);

      expect(result, Colors.white);
    });
  });
}
