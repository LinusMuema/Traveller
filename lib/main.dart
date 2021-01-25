import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_play/screens/nav.dart';
import 'package:flutter_play/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const platform = MethodChannel('com.moose.traveller/flags');

  @override
  Widget build(BuildContext context) {
    platform.invokeMethod('setFlags');
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: '/',
      routes: {'/': (context) => Splash(), '/home': (context) => Home()},
    );
  }
}
