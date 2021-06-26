import 'package:flutter/material.dart';
import 'package:onboarding_vol_1/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Vol 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: Home()),
    );
  }
}
