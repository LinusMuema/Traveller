import 'package:flutter/material.dart';
import 'package:flutter_play/components/overlapped.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/user.dart';

class Likes extends StatelessWidget {
  final List<User> users;
  Likes({this.users});

  @override
  Widget build(BuildContext context) {
    final List<User> highlight = users.take(3).toList();
    final names = highlight.map((e) => e.name).join(", ");
    final others = "and ${users.length - 3} people like this";

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        overlapped(highlight.map((e) => e.image).toList()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(names, style: buttonText(Colors.white)),
            Text(others, style: h6(Colors.white)),
          ],
        )
      ],
    );
  }
}
