

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c6_online/provider/my_provider.dart';
import 'package:islami_c6_online/tabs/Quran/Sora_Screen_Itim.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class Sora extends StatefulWidget {

  static const String routName='Sora';


  @override
  State<Sora> createState() => _SoraState();
}

class _SoraState extends State<Sora> {
  List<String> Sura=[];
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProviderApp>(context);
    var SuraDetailsArgs =
    ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;
    if (Sura.isEmpty){
      LoadSora(SuraDetailsArgs.SuraTitel,SuraDetailsArgs.SuraIndex);
    }
    return Stack(
      children: [
      Image.asset(provider.getBackground(),height: double.infinity,width: double.infinity,fit:BoxFit.fill,),

    Scaffold(
    backgroundColor:Colors.transparent ,
      appBar: AppBar(
        title: Text('${AppLocalizations.of(context)!.islamiTitle}',style: Theme.of(context).textTheme.headline1),
      ),
      body: Sura.length == 0
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
          itemBuilder: (_, index) {
            return SuraDetilsItem(Sura[index].toString());
          },
          itemCount: Sura.length),)]);
  }
  LoadSora(String name ,int index)

    async {
      // int res=add(10, 20);
      String content =
          await rootBundle.loadString('assets/files/${index + 1}.txt');
      List<String> lines = [];
      lines.add(content);
      print(lines);
      Sura = lines;
      print(Sura);
      setState(() {});
    }

}
class SuraDetailsModel {
  String SuraTitel;
  int SuraIndex ;
  SuraDetailsModel(this.SuraTitel,this.SuraIndex);
}
