// -----------------------------------------------
// me.care ~ 2022
// Google Solution Challenge 2022
// GDSC FPT DaNang - Vietnam
// ~ Constants template & palette ~
// -----------------------------------------------
import 'package:flutter/material.dart';

// Prefix 'k-' corresponding for 'color'
Color kCrypticPrimary = const Color(0xff7ec9f5);
Color kCrypticSecondary = const Color(0xff3957ed);
Color kAquaPrimary = const Color(0xff64f5cd);
Color kAquaSecondary = const Color(0xff4799e9);
Color kPacificPrimary = const Color(0xff8aedf6);
Color kPacificSecondary = const Color(0xff60a2f5);
Color kNaturalPrimary = const Color(0xff80ed99);
Color kNaturalSecondary = const Color(0xff38a58b);

Color kMonoBlack = Colors.black;
Color kMonoDark = const Color(0xff212529);
Color kMonoShadow = const Color(0xff495057);
Color kMonoShade = const Color(0xff6c757d);
Color kMonoLight = const Color(0xffdee2e6);
Color kMonoCeramic = const Color(0xfffdfffc);
Color kMonoWhite = Colors.white;

Color kStatusError = const Color(0xffe71d36);
Color kStatusWarning = const Color(0xffff9f1c);
Color kStatusSuccess = const Color(0xff2ec4b6);

// -----------------------------------------------
// Prefix 't-' corresponding for 'text'
const tHeading6 = 10.0;
const tHeading5 = 12.0;
const tHeading4 = 14.0;
const tHeading3 = 18.0;
const tHeading2 = 22.0;
const tHeading1 = 28.0;

// -----------------------------------------------
// Prefix 's-' corresponding for 'space'
const sDefaultPadding = 15.0;
const sSmallPadding = 10.0;
const sMiniPadding = 5.0;

Widget spacer({double space = 15.0}) {
  return SizedBox(
    height: space,
  );
}

// -----------------------------------------------
// Prefix 'h-' corresponding for 'height'
const double hExtra = 56.0;
const double hLarge = 46.0;
const double hMedium = 34.0;
const double hSmall = 24.0;

// -----------------------------------------------
// Prefix 'b-' corresponding for 'box'
BoxShadow bShadow = BoxShadow(color: kMonoShadow, blurRadius: 5.0);

// -----------------------------------------------
// Prefix 'gs-' corresponding for 'gradient set'
List<Color> gsNatural = [kNaturalPrimary, kNaturalSecondary];
List<Color> gsPacific = [kPacificPrimary, kPacificSecondary];
