import 'package:flutter/material.dart';
import 'package:flutter_play/screens/home.dart';
import 'package:flutter_play/screens/splash.dart';
import 'package:fullscreen/fullscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FullScreen fullscreen;

  @override
  void initState() {
    super.initState();
    fullscreen = new FullScreen();
    enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
  }

  void enterFullScreen(FullScreenMode fullScreenMode) async {
    await fullscreen.enterFullScreen(fullScreenMode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: '/',
      routes: {'/': (context) => Splash(), '/home': (context) => Home()},
    );
  }
}
