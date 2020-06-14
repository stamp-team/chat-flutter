import 'package:flutter/material.dart';
import 'sign_up_page.dart';
import 'main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/mainPage',
      routes: {
        '/mainPage':(context)=>MainPage(),
        '/signUpPage':(context)=>SignUpPage(),
      },
    );
  }
}