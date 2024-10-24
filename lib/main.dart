import 'package:elzeiny_project/PlaceHolders/home_screen.dart';
import 'package:elzeiny_project/authintication/login.dart';
import 'package:elzeiny_project/PlaceHolders/shop_screen.dart';
import 'package:elzeiny_project/authintication/signup.dart';
import 'package:flutter/material.dart';

import 'PlaceHolders/sql_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'elzeiny Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
          useMaterial3: true),
      home: SignUp(),
    );
  }
}
