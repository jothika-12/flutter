import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Center(
        child: Text("this is login screen",
        style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}