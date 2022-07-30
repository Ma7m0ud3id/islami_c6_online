import 'package:flutter/material.dart';
import 'package:islami_c6_online/tabs/Ahadeth/Ahadeth.dart';
import 'package:islami_c6_online/tabs/Quran/Quran.dart';
import 'package:islami_c6_online/tabs/Radio.dart';
import 'package:islami_c6_online/tabs/Sebha/Sebha.dart';
import 'package:islami_c6_online/thems_data.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index1 =2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/dark_bg.png',height: double.infinity,width: double.infinity,fit:BoxFit.fill,),

         Scaffold(
           backgroundColor:Colors.transparent ,
          appBar: AppBar(
            title: Text('اسلامي',style: Theme.of(context).textTheme.headline1),
          ),
            bottomNavigationBar: Theme(
             data: Theme.of(context).copyWith(
               canvasColor: Theme.of(context).primaryColor,


             ),
             child: BottomNavigationBar(
                onTap: (index) {
                   index1=index;
                   setState((){});

               },
               currentIndex: index1,

               items: [
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_quran.png'),label:'quran',backgroundColor: Themee.Darkcolor ),
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_hadeth.png'),label: 'hadeth',backgroundColor: Themee.Darkcolor),
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_sebha.png'),label: 'sebha',backgroundColor: Themee.Darkcolor),
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_radio.png'),label: 'radio',backgroundColor: Themee.Darkcolor),
               ],
             ),
           ),
           body: tabs[index1],

    )
      ],

    );

  }

  List<Widget> tabs = [
    QuranScreen(),
    AhadethScreen(),
    SebhaScreen(),
    RadioScreen(),

  ];
}
