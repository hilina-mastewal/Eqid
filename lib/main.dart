import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/screens/FirstPage.dart';
//import 'package:todo_list/screens/home.dart';
//import 'package:todo_list/screens/login.dart';
//import 'package:todo_list/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFirstPage(),
    );
  }
}
