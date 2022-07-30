import 'package:flutter/material.dart';

class Themee {
  static Color Maincolor = Color(0xFFB7935F);
  static Color Darkcolor = Color(0xFF080D1F);
  static Color MainColerDark = Color(0xFFCBC202);
  static ThemeData mytheme =ThemeData(
    primaryColor:Darkcolor ,
  textTheme: TextTheme(headline1: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
      headline2: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
      headline3: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),
      headline4: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.yellow),
),
      appBarTheme: AppBarTheme(

        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0

      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: Colors.black,unselectedItemColor: Colors.white)

  );
  static ThemeData mythemeDark =ThemeData();
}