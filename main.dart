import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("restaurant menu"),
          backgroundColor: Colors.red,
          centerTitle: false,
        ),
        body: ListView(
          children: [
            Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(0, 5)),
              ],
              ),
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles", style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
              Text("delicious"),
              Text("29.05",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
          ],
        )
      ),
    );
  }
}
