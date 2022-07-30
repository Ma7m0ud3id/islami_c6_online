import 'package:flutter/material.dart';

class SuraDetilsItem extends StatelessWidget {
  String s;
  SuraDetilsItem(this.s);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$s',textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline4),
    );
  }
}
