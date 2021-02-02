import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_play/components/colors.dart';
import 'package:flutter_play/components/texts.dart';

final BorderRadius radius = BorderRadius.circular(10);

class SplashButton extends StatelessWidget {
  final String _text;
  SplashButton(this._text);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12.5),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4), borderRadius: radius),
                alignment: Alignment.center,
                child: Text(_text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto')),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SocialAuthButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: radius,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [darkBlue, lightBlue],
        ),
      ),
      child: Center(
        child: Text("Continue with Facebook", style: buttonText(Colors.white)),
      ),
    );
  }
}

class SplashAuthButton extends StatelessWidget {
  final String _text;
  SplashAuthButton(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
      decoration: BoxDecoration(borderRadius: radius, color: red500),
      child: Center(
        child: Text(
          _text.contains("Sign") ? "Create account" : _text,
          style: buttonText(Colors.white),
        ),
      ),
    );
  }
}
