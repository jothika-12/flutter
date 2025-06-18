import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
   double size =0;
   String inputValue="";
   String calculatedValue = "";
   String operator ="";

  @override
  Widget build(BuildContext context) {
    size =MediaQuery.of(context).size.width/20;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              child: Text(inputValue,style: TextStyle(color: Colors.white,fontSize: 100),),
            ),
            Column(
              children: [
                Row(
                  children: [
                    calcButton("7",Colors.white38),
                    calcButton("8",Colors.white38),
                    calcButton("9",Colors.white38),
                    calcButton("/",Colors.orange),
                  ],
                    
                ),
                Row(
                  children: [
                    calcButton("4",Colors.white38),
                    calcButton("5",Colors.white38),
                    calcButton("6",Colors.white38),
                    calcButton("*",Colors.orange),
                  ],
                    
                ),
                Row(
                  children: [
                    calcButton("1",Colors.white38),
                    calcButton("2",Colors.white38),
                    calcButton("3",Colors.white38),
                    calcButton("-",Colors.orange),
                  ],
                    
                ),
                Row(
                  children: [
                    calcButton("0",Colors.white38),
                    calcButton(".",Colors.white38),
                    calcButton("=",Colors.orange),
                    calcButton("+",Colors.orange),
                  ],
                    
                ),
              ],
            ),
            calcButton("clear", Colors.black)
          ],
        ),
      ),
    );
  }

  Widget calcButton(String text, Color bgcolor){
    return InkWell(
      onTap: (){
        if(text=="clear"){
          setState(() {
            inputValue=" ";
            calculatedValue="";
            operator="";
          });
        }else if(text=="+" || text=="-" || text=="/" || text=="*" || text=="+"){
         setState(() {
           calculatedValue=inputValue;
           inputValue="";
           operator=text;
         });
          }else if(text=="="){
            setState(() {
              double calc= double.parse(calculatedValue);
              double input =double.parse(inputValue);
              if(operator=="+"){
                inputValue=(calc+input).toString();
              }else if(operator=="-"){
              inputValue=(calc-input).toString();
              }else if(operator=="*"){
               inputValue=(calc*input).toString(); 
              }else if(operator=="/"){
                inputValue=(calc/input).toString();
              }
            });
          }
          else {
          setState(() {
          inputValue=inputValue + text;
        });
        }
        
      },
      child: Container(
                        decoration: BoxDecoration(color: bgcolor,
                        borderRadius: BorderRadius.circular(100)),
                        margin: EdgeInsets.all(30),
                        height: size,
                        width: size,
                        alignment: Alignment.center,
                        child:Text(text,
                        style:TextStyle(color: Colors.white,fontSize: 30),
                      ),
                      ),
    );
  }
}
