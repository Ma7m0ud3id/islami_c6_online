import 'package:flutter/material.dart';
import 'package:islami_c6_online/tabs/Quran/Sora_Screen.dart';

class quranItims extends StatelessWidget {
   String name ;
   int index;
   quranItims(this.name,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Sora.routName,
            arguments:  SuraDetailsModel(name, index));

      },

      child: Container(
        padding: EdgeInsets.all(15),
        child: Text('$name',style: Theme.of(context).textTheme.headline1,textAlign:TextAlign.center ),
      ),
    );
  }
}
