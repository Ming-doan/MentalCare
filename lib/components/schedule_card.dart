import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class ScheduleCard {
  static Widget mediumCard(
      {required List<String> date,
      required String title,
      required String doctor,
      required String imagePath,
      required Function callback}) {
    double defaultHeight = 100;

    late ImageProvider image;
    if (imagePath == "") {
      image = const AssetImage("assets/images/image.png");
    } else {
      image = NetworkImage(imagePath);
    }

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppBox.defaultRadius),
          color: AppColor.monoCeramic,
          boxShadow: AppBox.defaultShadow),
      height: defaultHeight,
      child: TextButton(
        onPressed: () {
          callback();
        },
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppBox.defaultRadius)),
            padding: EdgeInsets.zero,
            primary: AppColor.monoShade),
        child: Padding(
          padding: const EdgeInsets.all(AppBox.smallPadding),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppBox.circleRadius),
                    image: DecorationImage(image: image, fit: BoxFit.cover)),
                margin: const EdgeInsets.symmetric(
                    horizontal: AppBox.miniPadding,
                    vertical: AppBox.smallPadding),
                width: defaultHeight - AppBox.smallPadding * 4,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppBox.smallPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            date[0],
                            style: const TextStyle(
                                color: AppColor.naturalSecondary,
                                fontSize: AppText.heading5),
                          ),
                          Container(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.symmetric(
                                horizontal: AppBox.miniPadding),
                            decoration: BoxDecoration(
                                color: AppColor.naturalSecondary,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Text(
                            date[1],
                            style: const TextStyle(
                                color: AppColor.naturalSecondary,
                                fontSize: AppText.heading5),
                          ),
                        ],
                      ),
                      AppBox.verticalSpacer(space: AppBox.miniPadding),
                      Expanded(
                        child: Text(title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: AppColor.monoBlack,
                                fontSize: AppText.heading4,
                                fontWeight: AppText.semibold)),
                      ),
                      Text(
                        doctor,
                        style: const TextStyle(
                            fontSize: AppText.heading4,
                            color: AppColor.monoBlack),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: AppColor.monoBlack,
              )
            ],
          ),
        ),
      ),
    );
  }
}
