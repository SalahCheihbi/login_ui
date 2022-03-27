import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

ThemeData themeData = ThemeData(
  fontFamily: 'NeueHaasDisplay',
  primaryColor: defaultColor,
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.black),
    color: HexColor("#F9F9F9"),
    elevation: 0.0,
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
  ),
);
