import 'package:flutter/material.dart';
import 'package:islami_c6_online/tabs/Setting/Show_Bottom.dart';
import 'package:islami_c6_online/tabs/Setting/Show_theme.dart';
import 'package:islami_c6_online/thems_data.dart';
import 'package:islami_c6_online/thems_data.dart';

class Setting extends StatefulWidget {


  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Setting', style: Theme
              .of(context)
              .textTheme
              .headline4,textAlign: TextAlign.center),
          SizedBox(height: 15,),
          InkWell(
            onTap: () {
              ShowBottumLanguage();
            },

            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(100, 8, 13, 31),
                    border: Border.all(color: Theme
                        .of(context)
                        .primaryColor)
                ),
                child: Text('Language', style: Theme
                    .of(context)
                    .textTheme
                    .headline4,)),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: () {
              ShowBottumTheme1();
            },

            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(100, 8, 13, 31),
                    border: Border.all(color: Theme
                        .of(context)
                        .primaryColor)
                ),
                child: Text('Theme', style: Theme
                    .of(context)
                    .textTheme
                    .headline4,)),
          ),
        ],
      ),
    );
  }
       void ShowBottumLanguage(){
          showModalBottomSheet(context: context, builder: (context){
          return ShowBottom();
      });
    }
  void ShowBottumTheme1(){
    showModalBottomSheet(context: context, builder: (context){
      return ShowBottonTheme();
    });
  }
  }

