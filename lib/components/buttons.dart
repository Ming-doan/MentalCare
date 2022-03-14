import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class PillButtons {
  final double extraWidth = 200.0;
  final double largeWidth = 160.0;
  final double mediumWidth = 120.0;
  final double smallWidth = 80.0;

  BoxDecoration getDecoration(List<Color> colors) {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors),
        borderRadius: BorderRadius.circular(56.0));
  }

  Widget largeButton(
      {required String text,
      required Function function,
      required List<Color> colors}) {
    return Container(
      width: extraWidth,
      height: 56,
      decoration: getDecoration(colors),
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
              color: kMonoCeramic,
              fontFamily: 'Google Sans',
              fontSize: tHeading3),
        ),
        onPressed: () => function,
        style: TextButton.styleFrom(primary: kMonoCeramic),
      ),
    );
  }
}
