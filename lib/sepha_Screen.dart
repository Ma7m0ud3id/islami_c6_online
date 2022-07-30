import 'package:flutter/cupertino.dart';
/*import 'package:flutter/material.dart';

class Sepha extends StatefulWidget {
 static const String routeName='Sepha';

  @override
  State<Sepha> createState() => _SephaState();
}

class _SephaState extends State<Sepha> {
 int index =0;

 int count =0;

 String text ='How great is our God';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/dark_bg.png',height: double.infinity,width: double.infinity,fit:BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text('Eslami',style: Theme.of(context).textTheme.headline1),

          ),

          body: Column(
            children: [
              SizedBox(height: 50,),
              Center(child: Image.asset('assets/images/body_sebha_dark.png')),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('namber of praises',style: Theme.of(context).textTheme.headline2,)
                ],
              ),
              SizedBox(height: 50,),

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
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(onPressed: (){
                    setState((){
                      //text=changetext(text,count);
                     index= Change(text,index);
                     text=changetext(text,index);
                    });
                    // setState((){
                    //   text=changetext(text,index);
                    //   index= Change(text,index,count);
                    // });


                  }, child:Text('$text',style:Theme.of(context).textTheme.headline3 ,) , style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 40)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30)))),

                ],
              ),

            ],
          ),

        )
      ],
    );

  }
}
actionbutton(String text,int index){

  if(text=='How great is our God'){

    index++;
  }
  return index;
}
actionbutton1(String text,int index){
  if(text=='thanks God'){

      index++;


  }
  return index;
}
actionbutton2(String text,int index){
  if(text=='Allah is the greatest'){
    index++;
  }
  return index;
}
Change(String text,int index){
  if (index<=33){
    index++;
    print(index);
    return index;
  }
  else  {
    if (index <=66){
      //text='thanks God';
      index++;
      print(index);
     return index;
    }
    else  {
     if (index < 100) {
       //text='Allah is the greatest';
       index++;
       print(index);
       return index;
    }
     else {
       index=0;
       print(index);
       return index;
     }
  }
  }
}
changetext(String text,int index){
  if (index<=33){
    text='How great is our God';
    print(text);
    return text;
  }
  else if (index>33){
    if (index <=66){
      text='thanks God';
      print(text);
      return text;
    }
    else if(index>66) {
      if (index < 100) {
        text='Allah is the greatest';
        print(text);
        return text;
      }
      else {
        text='How great is our God';
        print(text);
        return text;
      }
    }
  }
}
*/