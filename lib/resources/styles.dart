import 'package:flutter/material.dart';
import 'package:cult_app/resources/constant.dart';

class AppStyles {
  static const textBaseStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static final buttonStadiumBlue = OutlinedButton.styleFrom(
    backgroundColor: Constant.blue,
    foregroundColor: Colors.white,
    textStyle: const TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 13,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    side: const BorderSide(color: Colors.black),
    fixedSize: const Size(315, 42),
  );

  static final buttonStadiumBlueWite = OutlinedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: const Color(0xFF283D6D),
    textStyle: const TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 13,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    side: const BorderSide(
      color: Color(0xFF283D6D),
    ),
    fixedSize: const Size(315, 42),
  );

  static final buttonStadiumRed = OutlinedButton.styleFrom(
    backgroundColor: Colors.red,
    foregroundColor: Colors.black,
    textStyle: const TextStyle(
      fontFamily: 'Avenir',
      fontSize: 14,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.5,
    ),
    shape: const StadiumBorder(),
    side: const BorderSide(color: Colors.transparent),
    fixedSize: const Size(double.infinity, 32),
  );

  static final buttonStadiumText = OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
    textStyle: const TextStyle(
      fontFamily: 'Avenir',
      fontSize: 14,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.5,
    ),
    shape: const StadiumBorder(),
    side: const BorderSide(color: Colors.transparent),
    fixedSize: const Size(double.infinity, 32),
  );

  static final buttonStadiumWhite = OutlinedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    textStyle: const TextStyle(
      fontFamily: 'Avenir',
      fontSize: 14,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.5,
    ),
    shape: const StadiumBorder(),
    side: const BorderSide(color: Color(0xFFF1F1F1)),
    fixedSize: const Size(double.infinity, 32),
  );

  /// It is useful if we need to modify default style to be light.
  static const textLight = TextStyle(fontWeight: FontWeight.w500);
}
