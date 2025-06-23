// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme_practice/routes_names.dart';
class Dashboard extends StatelessWidget{
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dashboard"),
      ),
      body: Center(
         child: ElevatedButton(onPressed: (){
          GoRouter.of(context).go("/profile");
         }, child: Text("profile"))
         ),
      );
    
  }
}