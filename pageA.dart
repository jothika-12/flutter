import 'package:flutter/material.dart';
import 'package:go_push/route_names.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page A"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: ()=>context.pushNamed(RouteNames.pageB),
         child: Text("go to page B")),
      ),
    );
  }
}

