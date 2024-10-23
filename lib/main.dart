import 'package:elzeiny_project/PlaceHolders/home_screen.dart';
import 'package:elzeiny_project/PlaceHolders/log_in_screen.dart';
import 'package:elzeiny_project/PlaceHolders/shop_screen.dart';
import 'package:elzeiny_project/PlaceHolders/sign_up.dart';
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
      home: SqlTest(),
    );
  }
}

