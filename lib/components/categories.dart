import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class Categories {
  Widget verticleCard({required String text}) {
    double defaultWidth = 80.0;

    return TextButton(
      style: TextButton.styleFrom(
          primary: kMonoShade, padding: const EdgeInsets.all(sMiniPadding)),
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
            color: kMonoCeramic,
            borderRadius: BorderRadius.circular(rDefaultRadius * 2),
            boxShadow: bsDefaultShadow),
        width: defaultWidth + (sDefaultPadding * 4),
        padding: const EdgeInsets.symmetric(vertical: sDefaultPadding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: defaultWidth,
              height: defaultWidth,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: gsCryptic,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(rDefaultRadius * 2)),
            ),
            Text(
              text,
              style: TextStyle(
                  color: kMonoBlack,
                  fontSize: tHeading3,
                  fontFamily: 'Google Sans',
                  fontWeight: wSemibold),
            )
          ],
        ),
      ),
    );
  }
}
