import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatefulWidget{
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String displayedtext="no text data";
  List<String> tasklist=[];
  TextEditingController textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("To-Do List App"),
          backgroundColor: Colors.blue,
          centerTitle: false,
        ),
        body: Column(
          children: [
            Row(children: [
              Expanded(child: Container(
            padding: EdgeInsets.all(10),
            child:  TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("enter a task")
              ),
            ),
           ),
            ),
           MaterialButton(
            color: Colors.white,
            height: 50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
            onPressed: (){
              setState(() {
                tasklist.add(textController.text);
                textController.clear();
              });
            },
           child: Text("Add"),),
            ],),
            
            Flexible(
              child: ListView.builder(
                itemCount: tasklist.length,
                itemBuilder:(context , index ){
                  return Row(children: [
                 Expanded(
                   child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(tasklist[index]),
                                 ),
                 ),
                MaterialButton(
                  child: Icon(Icons.delete,color: Colors.red,),
                  onPressed: (){
                    setState(() {
                      tasklist.removeAt(index);
                    });
                  },
                ),
              ],);
                }),
            ),
          ],
        ),
      ),
    );
  }
}

