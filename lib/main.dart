import 'package:flutter/material.dart';
import 'package:login_ui/modules/login/login_page.dart';

import 'shared/style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: themeData,
      home: const LoginPage(),
    );
  }
}
