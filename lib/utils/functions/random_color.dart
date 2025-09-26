import 'dart:math';
import 'dart:ui';

/// Returns random [Color] with full opacity
Color randomColor() {
  return Color((Random().nextDouble() * 0xFFFFFF)
      .toInt())
      .withValues(alpha: 1.0);
}
