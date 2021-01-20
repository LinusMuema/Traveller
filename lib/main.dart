import 'package:flutter/material.dart';
import 'package:flutter_play/screens/home.dart';
import 'package:flutter_play/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: '/',
      routes: {'/': (context) => Splash(), '/home': (context) => Home()},
    );
  }
}
