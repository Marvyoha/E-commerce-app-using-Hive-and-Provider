import 'package:flutter/material.dart';

class GlobalVariables {
  static double sizeHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double sizeWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static EdgeInsets bodyPadding(BuildContext context) {
    return const EdgeInsets.only(
      left: 40,
      right: 40,
      top: 15,
      bottom: 30,
    );
  }

  static EdgeInsets mainScreenPadding(BuildContext context) {
    return const EdgeInsets.only(
      left: 15,
      right: 15,
      top: 5,
      bottom: 30,
    );
  }

  static EdgeInsets listViewPadding(BuildContext context) {
    return const EdgeInsets.only(
      left: 10,
      right: 10,
      top: 15,
      bottom: 15,
    );
  }

  static BoxDecoration listViewDecorNorm(BuildContext context) {
    return const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 0.8, offset: Offset(0, 4))
      ],
    );
  }

  static BoxDecoration listViewDecorSmall(BuildContext context) {
    return const BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 0.8, offset: Offset(0, 4))
      ],
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );
  }
}
