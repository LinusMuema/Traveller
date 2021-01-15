import 'package:flutter/material.dart';
import 'package:flutter_play/components/buttons.dart';
import 'package:flutter_play/components/dividers.dart';
import 'package:flutter_play/components/inputs.dart';
import 'package:flutter_play/components/texts.dart';

class SplashDialog extends StatelessWidget {
  final String type;
  SplashDialog(this.type);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
                child: Column(
              children: [
                Container(
                  child: SubHeading(type, Color(0xff323B45)),
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                SplashInput(
                    "Username", Icon(Icons.person, color: Color(0xffA8B6C8)))
              ],
            )),
          ),
          WordedDivider(),
          SocialAuthButton()
        ],
      ),
    );
  }
}
