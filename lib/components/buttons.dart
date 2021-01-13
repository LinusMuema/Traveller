import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_play/components/texts.dart';

class SplashButton extends StatelessWidget {
  final String _text;
  SplashButton(this._text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.5),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: ButtonText(_text, Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
