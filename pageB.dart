import 'package:flutter/material.dart';
import 'package:go_push/route_names.dart';
import 'package:go_router/go_router.dart';

class PageB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pageB"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: ()=>context.pushNamed(RouteNames.pageC), 
        child: Text("go to page C")),
      ),
    );
  }
}