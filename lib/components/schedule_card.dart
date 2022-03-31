import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class ScheduleCard {
  Widget mediumCard(
      {required List<String> date,
      required String title,
      required String doctor}) {
    double defaultHeight = 90;

    return TextButton(
      onPressed: () {},
      style:
          TextButton.styleFrom(padding: EdgeInsets.zero, primary: kMonoBlack),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(rDefaultRadius),
            color: kMonoCeramic,
            boxShadow: bsDefaultShadow),
        height: defaultHeight,
        padding: const EdgeInsets.all(sSmallPadding),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(sMiniPadding),
              width: defaultHeight - sSmallPadding * 2 - sMiniPadding * 2,
              decoration: BoxDecoration(
                  color: kMonoShadow,
                  borderRadius: BorderRadius.circular(defaultHeight)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: sSmallPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          date[0],
                          style: TextStyle(
                              color: kNaturalSecondary,
                              fontFamily: 'Google Sans',
                              fontSize: tHeading5),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: kNaturalSecondary,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Text(
                          date[1],
                          style: TextStyle(
                              color: kNaturalSecondary,
                              fontFamily: 'Google Sans',
                              fontSize: tHeading5),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontFamily: 'Google Sans',
                              fontSize: tHeading4,
                              fontWeight: wSemibold)),
                    ),
                    Text(
                      doctor,
                      style: const TextStyle(
                          fontFamily: 'Google Sans', fontSize: tHeading4),
                    )
                  ],
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }
}
