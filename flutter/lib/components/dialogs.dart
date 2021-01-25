import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_play/components/buttons.dart';
import 'package:flutter_play/components/colors.dart';
import 'package:flutter_play/components/dividers.dart';
import 'package:flutter_play/components/inputs.dart';
import 'package:flutter_play/components/texts.dart';

final RoundedRectangleBorder cardShape =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
typedef void DialogCallback();

class SplashDialog extends StatelessWidget {
  final String type;
  final DialogCallback callback;
  SplashDialog(this.type, {@required this.callback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: insertContent(),
      ),
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
                    child: Text(type, style: h4(grey500)),
                    margin: EdgeInsets.symmetric(vertical: 20)),
                addInputs(),
                InkWell(
                  child: SplashAuthButton(type),
                  onTap: () {
                    callback();
                  },
                )
              ],
            ),
          ),
        ),
        WordedDivider(),
        InkWell(
          child: SocialAuthButton(),
          onTap: () {
            callback();
          },
        )
      ],
    );
  }

  Widget addInputs() {
    final List<Widget> inputs = [];
    inputs.add(SplashInput("Username", Icon(Icons.person, color: white300)));
    inputs.add(SplashInput("Password", Icon(Icons.lock, color: white300)));

    if (type.contains("Sign")) {
      inputs.add(
          SplashInput("Re-type password", Icon(Icons.lock, color: white300)));
      inputs.add(SplashInput("Email", Icon(Icons.email, color: white300)));
    }
    return Column(children: inputs);
  }
}
