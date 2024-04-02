import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red900 = fromHex('#b52510');

  static Color indigoA100 = fromHex('#6e8cf9');

  static Color lightGreen400 = fromHex('#99e86c');

  static Color lightGreen500 = fromHex('#73c74e');

  static Color black900 = fromHex('#000000');

  static Color deepOrange800 = fromHex('#d83d17');

  static Color blueGray900 = fromHex('#222741');

  static Color indigo9006c = fromHex('#6c14248e');

  static Color blueGray200 = fromHex('#acaebe');

  static Color lime600 = fromHex('#d6c327');

  static Color gray90087 = fromHex('#870f1225');

  static Color indigo900A2 = fromHex('#a214248e');

  static Color blueGray500 = fromHex('#75788d');

  static Color blue50A2 = fromHex('#a2d8e3fe');

  static Color gray200 = fromHex('#efefef');

  static Color gray300 = fromHex('#dcdcdf');

  static Color blue50 = fromHex('#d8e3fe');

  static Color gray100 = fromHex('#f7f7f7');

  static Color indigoA10001 = fromHex('#8ba6fc');

  static Color orange50 = fromHex('#fefcd6');

  static Color bluegray400 = fromHex('#888888');

  static Color indigoA400 = fromHex('#3f63f6');

  static Color lime50 = fromHex('#f3fde2');

  static Color blue100 = fromHex('#b2c6fe');

  static Color indigo700 = fromHex('#1f36b1');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo500 = fromHex('#2e4bd3');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
