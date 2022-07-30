import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c6_online/tabs/Ahadeth/HadethItem.dart';
import 'package:islami_c6_online/thems_data.dart';

class AhadethScreen extends StatefulWidget {


  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<AhadethModel> Allahadeth = [];
  @override
  Widget build(BuildContext context) {
    if (Allahadeth.isEmpty){
      load();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
       Divider(
         color: Themee.MainColerDark,
         thickness: 2,
       ),
        Text('احاديث',style: Theme.of(context).textTheme.headline1,),
        Divider(
          color: Themee.MainColerDark,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(itemBuilder: (_, index) {
                 return HadethItem(Allahadeth[index]);
                 }, separatorBuilder: (_,context){
            return Container(
              padding: EdgeInsets.all(1),
              margin: EdgeInsets.symmetric(horizontal: 53),
              color: Themee.MainColerDark,
            );
          }, itemCount:Allahadeth.length ),
        )

      ],
    );
  }
void load()async {
  // int res=add(10, 20);
  String content =
  await rootBundle.loadString('assets/files/ahadeth.txt');
  List<String> ahadeth=content.trim().split('#');

  for(int i=0;i<ahadeth.length;i++){
    String ahadethText=ahadeth[i];
    ahadethText.trim();
    print(ahadethText);
    print('-------------');
    List<String>Line=ahadethText.trim().split('\n');
    String titel = Line[0];
    Line.removeAt(0);
    print(Line);
    print('-------------');
    AhadethModel ahadethModel=AhadethModel(titel,Line);
    Allahadeth.add(ahadethModel);

  }
  setState((){});

}

}
class AhadethModel {
  String titel;
  List<String>Line;
  AhadethModel(this.titel,this.Line);
}