import 'dart:math';
import 'dart:ui';

Color randomColor() {
  return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withValues(alpha: 1.0);
}