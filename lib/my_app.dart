import 'package:flutter/material.dart';
import 'package:islami/core/resources/routes_manager.dart';
import 'package:islami/ui/home_screen/screen/home_screen.dart';
import 'package:islami/ui/intro_screen/screen/intro_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      routes: {
       RoutesManager.introRouteName:(context) => IntroScreen(),
       RoutesManager.homeRouteName:(context) => HomeScreen(),
      },
      initialRoute: RoutesManager.homeRouteName,

    );
  }
}