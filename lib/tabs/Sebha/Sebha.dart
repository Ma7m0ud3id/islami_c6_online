import 'package:flutter/material.dart';
import 'package:islami_c6_online/provider/my_provider.dart';
import 'package:islami_c6_online/tabs/Sebha/Sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class SebhaScreen extends StatefulWidget {

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int index =0;

  int count =0;

  String text ='سبحان اللة';
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProviderApp>(context);
    // var suii =
    // ModalRoute.of(context)!.settings.arguments as Change;
    return  SingleChildScrollView(
      child: Column(
              children: [
                SizedBox(height: 28,),
                Center(child: Image.asset('assets/images/head_sebha_dark.png',height:60 ,)),
                Center(child: Image.asset('assets/images/body_sebha_dark.png')),
                SizedBox(height: 28,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('عدد التسبيحات',style: Theme.of(context).textTheme.headline1,)
                  ],
                ),
                SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                        padding: EdgeInsets.all(35),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0,color: Colors.black45),
                          borderRadius: const BorderRadius.horizontal(left: Radius.circular(30),right: Radius.circular(30)),
                          color: Colors.black45,
                        ),

                        child: Text('$index',style:Theme.of(context).textTheme.headline1))
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:() {
                        Change change=Change(text,index,count);
                          count=change.count1;
                          print(change.count1);
                          print('---------------');
                          text=change.text1;
                        print(change.text1);
                        print('---------------');
                         index= change.index1;
                        print(change.index1);
                        print('---------------');
                          setState((){});
                      },
                      child: Container(

                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                          decoration: BoxDecoration(
                            border: Border.all(width: 0,color: Colors.black45),
                            borderRadius: const BorderRadius.horizontal(left: Radius.circular(50),right: Radius.circular(50)),
                            color: provider.BottonColer(),
                          ),

                          child: Text('$text',style:Theme.of(context).textTheme.headline2)),
                    )

                    // ElevatedButton(onPressed: (){
                    //
                    //
                    //
                    //
                    // }, child:Text('$text',style:Theme.of(context).textTheme.headline2 ,) , style: ButtonStyle(
                    //     backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    //     padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 35)),
                    //     textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15)))),

                  ],
                ),

              ],
            ),
    );




  }
}
class Change {

  int index1 ;

  int count1 ;

  String text1 ;
  Change(this.text1,this.index1,this.count1){
    if (count1 <33){

      count1++;
      text1='سبحان اللة';
      index1++;
    }
    else {
      if (count1 <66){
        if(count1==33)index1=0;

        count1++;
        text1='الحمد للة';
        index1++;
      }
      else{
        if (count1 <99){
          if(count1==66)index1=0;
          count1++;
          text1='الله اكبر';
          index1++;
        }
        else{
          index1=0;
          text1='سبحان اللة';
          count1=0;
        }
      }

    }
  }
  //الله اكبر
}