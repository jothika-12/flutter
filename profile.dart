// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme_practice/routes_names.dart';
class Profile extends StatelessWidget{
  final String name;
  Profile({super.key,
  required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          GoRouter.of(context).go("/");
          // context.goNamed(RoutesNames.dashboard);
        }, child: Text("dashboard")),
      ),
    );
  }
}