import 'package:flutter/material.dart';
import 'package:islami_c6_online/provider/my_provider.dart';
import 'package:islami_c6_online/tabs/Ahadeth/Ahadeth.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName='HadethDetails';

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProviderApp>(context);
    AhadethModel model =
    ModalRoute.of(context)!.settings.arguments as AhadethModel;
    return  Stack(
        children: [
          Image.asset(
            provider.getBackground(),
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
