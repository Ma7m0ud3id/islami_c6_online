import 'package:flutter/material.dart';
import 'package:islami_c6_online/tabs/Ahadeth/Ahadeth.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName='HadethDetails';

  @override
  Widget build(BuildContext context) {
    AhadethModel model =
    ModalRoute.of(context)!.settings.arguments as AhadethModel;
    return  Stack(
        children: [
          Image.asset(
            'assets/images/dark_bg.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                '${model.titel}',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${model.Line}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
        ],

    );
  }
}
