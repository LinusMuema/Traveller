import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_play/components/buttons.dart';
import 'package:flutter_play/components/dialogs.dart';
import 'package:flutter_play/components/texts.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Explore",
                style: h2(Colors.black),
              ),
              padding: EdgeInsets.only(top: 65, bottom: 2),
            ),
            Text(
              "new amazing countries",
              style: normal(Colors.black),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            dialog("Log In", context);
                          },
                          child: SplashButton("Log In"))),
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            dialog("Sign Up", context);
                          },
                          child: SplashButton("Sign Up"))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  dialog(String type, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SplashDialog(type);
        });
  }
}
