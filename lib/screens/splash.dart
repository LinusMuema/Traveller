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
                child: Text("Explore", style: heading(Colors.black)),
                padding: EdgeInsets.only(top: 65, bottom: 2)),
            Text("new amazing countries", style: normalText(Colors.black)),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  addButton(context, "Log In"),
                  addButton(context, "Sign Up"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addButton(BuildContext context, String type) {
    return Expanded(
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SplashDialog(type);
            },
          );
        },
        child: SplashButton(type),
      ),
    );
  }
}
