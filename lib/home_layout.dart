import 'package:flutter/material.dart';
import 'package:islami_c6_online/provider/my_provider.dart';
import 'package:islami_c6_online/tabs/Ahadeth/Ahadeth.dart';
import 'package:islami_c6_online/tabs/Quran/Quran.dart';
import 'package:islami_c6_online/tabs/Radio.dart';
import 'package:islami_c6_online/tabs/Sebha/Sebha.dart';
import 'package:islami_c6_online/tabs/Setting/Setting.dart';
import 'package:islami_c6_online/thems_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class HomeLayout extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index1 =0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProviderApp>(context);
    return Stack(
      children: [
        Image.asset(provider.getBackground(),height: double.infinity,width: double.infinity,fit:BoxFit.fill,),

         Scaffold(
           backgroundColor:Colors.transparent ,
          appBar: AppBar(
            title: Text('${AppLocalizations.of(context)!.islamiTitle}',style: Theme.of(context).textTheme.headline1),
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
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_quran.png'),label:'${AppLocalizations.of(context)!.quran}' ),
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_hadeth.png'),label: '${AppLocalizations.of(context)!.ahadeth}'),
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_sebha.png'),label: '${AppLocalizations.of(context)!.tsbeh}',),
                 BottomNavigationBarItem(icon:Image.asset('assets/images/icon_radio.png'),label: '${AppLocalizations.of(context)!.radio}'),
                 BottomNavigationBarItem(icon:Icon(Icons.settings),label: '${AppLocalizations.of(context)!.settings}',),
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
    Setting(),

  ];
}
