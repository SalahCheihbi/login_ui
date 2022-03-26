import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

ThemeData themeData = ThemeData(
  primaryColor: defaultColor,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    color: HexColor("#F9F9F9"),
    elevation: 0.0,
    toolbarTextStyle: TextStyle(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
);
