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
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero, primary: AppColor.monoBlack),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppBox.defaultRadius),
            color: AppColor.monoCeramic,
            boxShadow: AppBox.defaultShadow),
        height: defaultHeight,
        padding: const EdgeInsets.all(AppBox.smallPadding),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(AppBox.miniPadding),
              width: defaultHeight -
                  AppBox.smallPadding * 2 -
                  AppBox.miniPadding * 2,
              decoration: BoxDecoration(
                  color: AppColor.monoShadow,
                  borderRadius: BorderRadius.circular(defaultHeight)),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppBox.smallPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          date[0],
                          style: const TextStyle(
                              color: AppColor.naturalSecondary,
                              fontFamily: 'Google Sans',
                              fontSize: AppText.heading5),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: AppColor.naturalSecondary,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Text(
                          date[1],
                          style: const TextStyle(
                              color: AppColor.naturalSecondary,
                              fontFamily: 'Google Sans',
                              fontSize: AppText.heading5),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontFamily: 'Google Sans',
                              fontSize: AppText.heading4,
                              fontWeight: AppText.semibold)),
                    ),
                    Text(
                      doctor,
                      style: const TextStyle(
                          fontFamily: 'Google Sans',
                          fontSize: AppText.heading4),
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
