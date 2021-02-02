import 'package:flutter/material.dart';

class Rotate extends StatefulWidget {
  final Widget content;
  final bool animate;

  Rotate({this.content, this.animate});

  @override
  _RotateState createState() => _RotateState();
}

class _RotateState extends State<Rotate> with TickerProviderStateMixin {
  final Tween<double> tween = Tween<double>(begin: 0, end: 0.5);

  AnimationController _controller;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animate)
      _controller.forward();
    else
      _controller.reverse();

    return RotationTransition(
      turns: tween.animate(_controller),
      child: widget.content,
    );
  }
}
