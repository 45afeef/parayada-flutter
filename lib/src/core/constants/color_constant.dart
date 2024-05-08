import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f8f9fa');

  static Color red700 = fromHex('#d03329');

  static Color red600 = fromHex('#f22929');

  static Color blueA700 = fromHex('#0061ff');

  static Color blueGray10001 = fromHex('#d6dae2');

  static Color blueA100 = fromHex('#80b0ff');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#f9fbff');

  static Color black9001e = fromHex('#1e000000');

  static Color pinkA200 = fromHex('#e61eba');

  static Color greenA700 = fromHex('#14c025');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#37334d');

  static Color blue5001 = fromHex('#e0ecff');

  static Color blueGray700 = fromHex('#424c5d');

  static Color blueGray900 = fromHex('#262b35');

  static Color gray70011 = fromHex('#11555555');

  static Color blueGray200 = fromHex('#bac1ce');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#74839d');

  static Color blueGray300 = fromHex('#9ea8ba');

  static Color orangeA700 = fromHex('#ff6700');

  static Color gray800 = fromHex('#424242');

  static Color blueGray600 = fromHex('#5f6c86');

  static Color amber700 = fromHex('#da9e01');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#f5efed');

  static Color blue50 = fromHex('#e0ebff');

  static Color deepPurple50 = fromHex('#ebe8f1');

  static Color indigo900 = fromHex('#002055');

  static Color blue200 = fromHex('#a6c8ff');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
