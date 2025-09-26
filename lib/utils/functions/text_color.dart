import 'package:flutter/material.dart';

/// Returns [Color] for text depending on [backgroundColor] luminance
///
/// If [backgroundColor] luminance is:
/// - higher or equal 0.5 then it returns [Colors.black]
/// - lower than 0.5, then it returns [Colors.white]
Color textColorForBackground(Color backgroundColor) {
  return backgroundColor.computeLuminance() >= 0.5
      ? Colors.black
      : Colors.white;
}
