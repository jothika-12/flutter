import 'package:flutter/material.dart';
import 'package:go_push/pageA.dart';
import 'package:go_push/pageB.dart';
import 'package:go_push/pageC.dart';
import 'package:go_push/route_names.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "go router",
      routerConfig:_router,
    );
  }
  final GoRouter _router=GoRouter(
    routes:[
      GoRoute(
        name:RouteNames.pageA,
        builder:(context,state)=>  PageA(),path:'/',
      routes:[
        GoRoute(
          name:RouteNames.pageB,
          builder:(context,state)=> PageB(), path: 'pageB'
          ),
        GoRoute(
          name:RouteNames.pageC,
          path:"pageC",
          builder:(context,state)=> PageC(),
        ),
      ], 
      ),
    ],
  );
}
