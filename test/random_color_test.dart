import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_background/utils/functions/random_color.dart';

void main() {
  group('randomColor', () {
    test('returns a Color', () {
      final color = randomColor();

      expect(color, isA<Color>());
    });

    test('returns Color with full opacity', () {
      final color = randomColor();

      expect(color.a, 1.0);
    });
  });
}
