// -----------------------------------------------
// me.care ~ 2022
// Google Solution Challenge 2022
// GDSC FPT DaNang - Vietnam
// ~ Constants template & palette ~
// -----------------------------------------------
import 'package:flutter/material.dart';

class App {
  static late double screenWidth = 0.0;
  static late double screenHieght = 0.0;
}

class AppColor {
  static const Color crypticPrimary = Color(0xff7ec9f5);
  static const Color crypticSecondary = Color(0xff3957ed);
  static const Color aquaPrimary = Color(0xff64f5cd);
  static const Color aquaSecondary = Color(0xff4799e9);
  static const Color pacificPrimary = Color(0xff8aedf6);
  static const Color pacificSecondary = Color(0xff60a2f5);
  static const Color naturalPrimary = Color(0xff80ed99);
  static const Color naturalSecondary = Color(0xff38a58b);

  static const Color monoBlack = Colors.black;
  static const Color monoDark = Color(0xff212529);
  static const Color monoFade = Color(0xff495057);
  static const Color monoShadow = Color(0xff6c757d);
  static const Color monoShade = Color(0xffadb5bd);
  static const Color monoLight = Color(0xffdee2e6);
  static const Color monoCeramic = Color(0xfffdfffc);
  static const Color monoWhite = Colors.white;

  static const Color statusError = Color(0xffe71d36);
  static const Color statusWarning = Color(0xffff9f1c);
  static const Color statusSuccess = Color(0xff2ec4b6);
}

class AppGradient {
  static List<Color> natural = [
    AppColor.naturalPrimary,
    AppColor.naturalSecondary
  ];
  static List<Color> pacific = [
    AppColor.pacificPrimary,
    AppColor.pacificSecondary
  ];
  static List<Color> cryptic = [
    AppColor.crypticPrimary,
    AppColor.crypticSecondary
  ];
  static List<Color> aqua = [AppColor.aquaPrimary, AppColor.aquaSecondary];
}

class AppText {
  static const double heading6 = 10.0;
  static const double heading5 = 12.0;
  static const double heading4 = 14.0;
  static const double heading3 = 18.0;
  static const double heading2 = 22.0;
  static const double heading1 = 28.0;

  static const FontWeight light = FontWeight.w200;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semibold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w900;
}

class AppBox {
  static const double extraPadding = 45.0;
  static const double largePadding = 30.0;
  static const double defaultPadding = 15.0;
  static const double smallPadding = 10.0;
  static const double miniPadding = 5.0;

  static const double extraSize = 56.0;
  static const double largeSize = 46.0;
  static const double mediumSize = 34.0;
  static const double smallSize = 24.0;

  static const double circleRadius = 100.0;
  static const double curvedRadius = 20.0;
  static const double defaultRadius = 10.0;

  static List<BoxShadow> defaultShadow = [
    const BoxShadow(color: AppColor.monoLight, blurRadius: 3)
  ];

  static Widget verticalSpacer({double space = defaultPadding}) {
    return SizedBox(
      height: space,
    );
  }

  static Widget horizontalSpacer({double space = defaultPadding}) {
    return SizedBox(
      width: space,
    );
  }
}
