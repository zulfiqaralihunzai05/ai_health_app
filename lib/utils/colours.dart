import 'package:flutter/material.dart';

abstract class Colours {
  static const Color primaryColor = Color(0xFFFEF6E5);
  static const Color backgroundColor = Color(0xFFFDFDFD);

  static const Color blackColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color transparentColor = Colors.transparent;

  static const Color blueColor = Color.fromARGB(255, 93, 148, 211);
  static const Color greenColor = Color(0xFF82BDA7);
  static const Color purpleColor = Color(0xFF9F88BC);
  static const Color brownColor = Color(0xFF9E796B);
  static const Color pinkColor = Color(0xFFD49ACF);
  static const Color yellowColor = Color(0xFFE0B46F);

  //TextColors
  static const Color primaryTextColor = Colors.black;
  static const Color primaryTextColorLight = Colors.white54;
  static const Color secondaryTextColor = Colors.black;
  static const Color secondaryTextColorlight = Colors.black54;

  //Cards
  static const List<Color> cardsColours = [
    yellowColor,
    blueColor,
    brownColor,
    greenColor,
    purpleColor,
    pinkColor,
  ];

  //Border
  static const Color borderColor = Colors.black26;
}
