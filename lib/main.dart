import 'package:flutter/material.dart';
import 'package:islami_c6_online/home_layout.dart';
import 'package:islami_c6_online/provider/my_provider.dart';
import 'package:islami_c6_online/sepha_Screen.dart';
import 'package:islami_c6_online/tabs/Ahadeth/HadethDetails.dart';
import 'package:islami_c6_online/tabs/Quran/Sora_Screen.dart';
import 'package:islami_c6_online/tabs/Setting/Show_Bottom.dart';
import 'package:islami_c6_online/thems_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'package:islami_c6_online/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context){
        return MyProviderApp();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  //String languag ='en';
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProviderApp>(context);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Arabic, no country code
      ],

      locale: Locale(provider.AppLanguage),
      routes:{
        HomeLayout.routeName:(c)=>HomeLayout(),
        Sora.routName:(v)=>Sora(),
        HadethDetails.routeName:(m)=>HadethDetails(),
      },
      initialRoute:HomeLayout.routeName,
      theme:Themee.mythemeLight ,
      darkTheme: Themee.mytheme,
      themeMode: provider.themeMode,

    );

  }
}
/*"number of sabihat":"number of sabihat"
  "How great is our God":"How great is our God",
  "Thank God":"Thank God",
  "Allah is the greatest":"Allah is the greatest",
  "number of sabihat":"عدد السبيحات"
    "How great is our God":"سبحان الله",
    "Thank God":"الحمد لله",
    "Allah is the greatest":"الله اكبر",
 */