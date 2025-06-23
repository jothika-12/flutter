import 'package:flutter/material.dart';
import 'package:theme_practice/dashboard.dart';
import 'package:theme_practice/error_page.dart';
import 'package:theme_practice/login.dart';
import 'package:theme_practice/profile.dart';
import 'package:go_router/go_router.dart';
import 'package:theme_practice/routes_names.dart';

void main(){
  runApp( MyApp());
}
final isLoggedIn=true;
class MyApp extends StatelessWidget{
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'go router',
      routerConfig: _router,
      
    );
  }
  // final GoRouter _router=GoRouter(
  //   errorBuilder: (context,State) => ErrorPage(),
  //   redirect: (context, state){
  //     if(isLoggedIn){
  //       return "/test";
  //     }
  //     else{
  //       return"/";
  //     }
  //   },
  //   routes:[

  //   GoRoute(
  //     path:"/",
  //     builder:(context,state)=> Login()),
  //   GoRoute(
  //     path:"/dashboard",
  //     builder:(context,state)=> const Dashboard()
  //   ),
  // ]);
  final GoRouter _router=GoRouter(routes:[
    GoRoute(path: "/",builder: (context,state)=>const Dashboard()),
    GoRoute(
      path:"/profile",
      pageBuilder:(context,state){
        return CustomTransitionPage(
          transitionDuration: const Duration(seconds: 4),
          fullscreenDialog: true,
          key:state.pageKey,
          child:Profile(name: 'profile',),
          transitionsBuilder:(context,animation,secondaryAnimation,child){
            return FadeTransition(
              opacity:
              CurveTween(curve:Curves.easeInOutCirc).animate(animation),
              child:child,
            );
          },
        );
      },
    ),
  ]);
}
 