import 'package:flutter/material.dart';

BoxDecoration bgImage(String image) {
  return BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover));
}

BoxDecoration bgImageRounded(String image) {
  return BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(10));
}

BoxDecoration verticalGradientRounded() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(0, 0, 0, 0.0001),
          Color.fromRGBO(0, 0, 0, 0.6048)
        ]),
  );
}

double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
