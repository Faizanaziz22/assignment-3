import 'package:flutter/material.dart';

import 'package:ch10_layout/pages/home.dart'; // Added this to show the SettingsScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'My Layout App',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: SettingsScreen(),
        debugShowCheckedModeBanner: false
    );
  }
}
