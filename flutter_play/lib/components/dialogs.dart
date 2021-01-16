import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_play/components/buttons.dart';
import 'package:flutter_play/components/dividers.dart';
import 'package:flutter_play/components/inputs.dart';
import 'package:flutter_play/components/texts.dart';

final Color color = Color(0xffA8B6C8);
final RoundedRectangleBorder cardShape =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));

class SplashDialog extends StatelessWidget {
  final String type;
  SplashDialog(this.type);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(20),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: insertContent(),
    );
  }

  Widget insertContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Card(
            shape: cardShape,
            child: Column(
              children: [
                Container(
                    child: Text(type, style: h4(Color(0xff323b45))),
                    margin: EdgeInsets.symmetric(vertical: 20)),
                addInputs(),
                SplashAuthButton(type)
              ],
            ),
          ),
        ),
        WordedDivider(),
        SocialAuthButton()
      ],
    );
  }

  Widget addInputs() {
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
