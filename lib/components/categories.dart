import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class Categories {
  static Widget verticleCard(
      {required String text,
      required String imagePath,
      required Function callback}) {
    double defaultWidth = 80.0;

    return Container(
      margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          color: AppColor.monoCeramic,
          borderRadius: BorderRadius.circular(AppBox.largePadding),
          boxShadow: AppBox.defaultShadow),
      width: defaultWidth + (AppBox.defaultPadding * 4),
      child: TextButton(
        style: TextButton.styleFrom(
            primary: AppColor.monoShade,
            padding: const EdgeInsets.all(AppBox.miniPadding),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppBox.curvedRadius * 1.5))),
        onPressed: () {
          callback();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppBox.largePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: [
                Positioned(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: defaultWidth,
                      height: defaultWidth,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: AppGradient.aqua,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius:
                              BorderRadius.circular(AppBox.circleRadius)),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: ClipOval(
                      child: SizedBox(
                          height: defaultWidth - 20,
                          width: defaultWidth - 20,
                          child: Image.asset(imagePath)),
                    ),
                  ),
                ),
              ]),
              Text(
                text,
                style: const TextStyle(
                    color: AppColor.monoBlack,
                    fontSize: AppText.heading3,
                    fontWeight: AppText.semibold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
