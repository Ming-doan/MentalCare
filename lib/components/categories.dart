import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class Categories {
  Widget verticleCard({required String text}) {
    double defaultWidth = 80.0;

    return TextButton(
      style: TextButton.styleFrom(
          primary: AppColor.monoShade,
          padding: const EdgeInsets.all(AppBox.miniPadding)),
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.monoCeramic,
            borderRadius: BorderRadius.circular(AppBox.largePadding),
            boxShadow: AppBox.defaultShadow),
        width: defaultWidth + (AppBox.defaultPadding * 4),
        padding: const EdgeInsets.symmetric(vertical: AppBox.largePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: defaultWidth,
              height: defaultWidth,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: AppGradient.cryptic,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(AppBox.curvedRadius)),
            ),
            Text(
              text,
              style: const TextStyle(
                  color: AppColor.monoBlack,
                  fontSize: AppText.heading3,
                  fontFamily: 'Google Sans',
                  fontWeight: AppText.semibold),
            )
          ],
        ),
      ),
    );
  }
}
