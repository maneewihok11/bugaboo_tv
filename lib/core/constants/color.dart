import 'package:flutter/material.dart';

extension ColorRes on Colors {
  static Color fromHexString(String hex) {
    final buffer = StringBuffer();
    if (hex.length == 6 || hex.length == 7) buffer.write('ff');
    buffer.write(hex.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static const Color primary = Color(0xFF17072b);
  static const Color secondary500 = Color(0xFF7C3AED);
}
