import 'package:flutter/material.dart';
import 'package:islami_c6_online/home_layout.dart';
import 'package:islami_c6_online/sepha_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Sepha.routeName,
      routes: {
        HomeLayout.routeName: (c) => HomeLayout(),
        Sepha.routeName:(v)=>Sepha(),
      },
    );
  }
}
