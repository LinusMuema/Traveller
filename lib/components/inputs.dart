import 'package:flutter/material.dart';

class SplashInput extends StatelessWidget {
  final String hint;
  final Icon icon;
  const SplashInput(this.hint, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffA8B6C8)),
          borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextFormField(
        obscureText: hint.contains('password'),
        decoration: new InputDecoration(
            prefixIcon: icon,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            hintText: hint,
            hintStyle: TextStyle(color: Color(0xffA8B6C8))),
        cursorHeight: 17,
      ),
      constraints: BoxConstraints.tightForFinite(width: 500, height: 50),
    );
  }
}
