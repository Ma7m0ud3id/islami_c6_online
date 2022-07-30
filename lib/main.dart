import 'package:flutter/material.dart';
import 'package:islami_c6_online/home_layout.dart';
import 'package:islami_c6_online/sepha_Screen.dart';
import 'package:islami_c6_online/tabs/Ahadeth/HadethDetails.dart';
import 'package:islami_c6_online/tabs/Quran/Sora_Screen.dart';
import 'package:islami_c6_online/thems_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        HomeLayout.routeName:(c)=>HomeLayout(),
        Sora.routName:(v)=>Sora(),
        HadethDetails.routeName:(m)=>HadethDetails(),
      },
      initialRoute:HomeLayout.routeName,
      theme:Themee.mytheme ,

    );

  }
}
