import 'package:flutter/material.dart';
import 'package:flutter_play/components/texts.dart';

final Color color = Color(0xffD8D8D8);

class WordedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          divider(),
          Text("Or", style: caption(color)),
          divider()
        ],
      ),
    );
  }

  Widget divider() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Divider(color: color),
      ),
    );
  }
}
