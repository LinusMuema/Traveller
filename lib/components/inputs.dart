import 'package:flutter/material.dart';
import 'package:flutter_play/components/colors.dart';

class SplashInput extends StatelessWidget {
  final String hint;
  final Icon icon;
  const SplashInput(this.hint, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      constraints: BoxConstraints.tightForFinite(height: 50),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: white300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        obscureText: hint.contains('word'),
        decoration: new InputDecoration(
          prefixIcon: icon,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          hintText: hint,
          hintStyle: TextStyle(color: white300),
        ),
      ),
    );
  }
}
