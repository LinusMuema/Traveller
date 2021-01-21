import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_play/components/buttons.dart';
import 'package:flutter_play/components/dialogs.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/utils/commons.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: bgImage('assets/images/splash.png'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(heading, style: h2(Colors.black)),
                padding: EdgeInsets.only(top: 65, bottom: 2)),
            Text(subheading, style: normal(Colors.black)),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: addButtons(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> addButtons(BuildContext context) {
    final _buttons = ["Log In", "Sign Up"];
    List<Widget> buttons = [];
    _buttons.forEach((element) {
      buttons.add(
        Expanded(
          child: InkWell(
            child: SplashButton(element),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SplashDialog(
                    element,
                    callback: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                  );
                },
              );
            },
          ),
        ),
      );
    });
    return buttons;
  }
}
