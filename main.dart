import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/constants.dart';
import 'package:flutter_ui/screen/landing_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'episode 1',
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        hintColor: COLOR_DARK_BLUE,
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: COLOR_DARK_BLUE),
      ),
      home: LandingPage(),
    );
  }
}
