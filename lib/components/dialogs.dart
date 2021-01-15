import 'package:flutter/material.dart';
import 'package:flutter_play/components/buttons.dart';
import 'package:flutter_play/components/dividers.dart';
import 'package:flutter_play/components/inputs.dart';

final Color color = Color(0xffA8B6C8);

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
                  child: Text(type,
                      style: TextStyle(
                          color: color,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto')),
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                addInputs()
              ],
            )),
          ),
          WordedDivider(),
          SocialAuthButton()
        ],
      ),
    );
  }

  addInputs() {
    final List<Widget> inputs = [];
    inputs.add(
        SplashInput("Username", Icon(Icons.person, color: Color(0xffA8B6C8))));
    inputs.add(
        SplashInput("Password", Icon(Icons.lock, color: Color(0xffA8B6C8))));

    if (type.contains("Sign")) {
      inputs.add(SplashInput(
          "Re-type password", Icon(Icons.lock, color: Color(0xffA8B6C8))));
      inputs.add(
          SplashInput("Email", Icon(Icons.email, color: Color(0xffA8B6C8))));
    }
    return Column(children: inputs);
  }
}
