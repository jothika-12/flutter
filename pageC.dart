import 'package:flutter/material.dart';

class PageC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page C"),
      ),
      body: Center(
        child: Text("this is page c",
        style: TextStyle(fontSize: 20),),
      ),
    );
  }
}