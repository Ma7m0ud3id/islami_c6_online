import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sepha extends StatelessWidget {
 static const String routeName='Sepha';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/imedge/dark_bg.png',height: double.infinity,width: double.infinity,fit:BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Eslami',),
          ),

        )
      ],
    );
  }
}
