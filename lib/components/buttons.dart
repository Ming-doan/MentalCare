import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class PillButtons {
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
      double? size,
      required List<Color> colors}) {
    return Container(
      width: size ?? 200.0,
      height: 56,
      decoration: getDecoration(colors),
      child: TextButton(
        child: Text(
          text,
          style: const TextStyle(
              color: AppColor.monoCeramic,
              fontFamily: 'Google Sans',
              fontSize: AppText.heading3),
        ),
        onPressed: () => function,
        style: TextButton.styleFrom(primary: AppColor.monoCeramic),
      ),
    );
  }
}
