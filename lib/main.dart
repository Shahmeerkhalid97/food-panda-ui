import 'package:flutter/material.dart';

import './screens/splash_screen.dart';
import './screens/welcome_screen.dart';

import 'constants/colors.dart';
import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodPanda UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MyColors.navy,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.2,
          titleTextStyle: TextStyle(
            fontFamily: Bold,
            color: Color(0xff323232),
          ),
          iconTheme: IconThemeData(color: MyColors.primaryColor),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: MyColors.navy,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.2,
          titleTextStyle: TextStyle(fontFamily: Bold, color: Color(0xff323232)),
          iconTheme: IconThemeData(color: MyColors.primaryColor),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
