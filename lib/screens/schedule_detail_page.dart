import 'package:flutter/material.dart';
import 'package:mental_care/components/app_bar.dart';
import 'package:mental_care/components/buttons.dart';
import 'package:mental_care/constants/constant.dart';
import 'package:mental_care/models/schedule_model.dart';

class ScheduleDetailPage extends StatelessWidget {
  final Schedule currentSchedule;
  const ScheduleDetailPage({Key? key, required this.currentSchedule})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Column(
            children: [
              const AppBarContainer(
                appBarTitle: "Schedule Detail",
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 300.0,
                      child: Stack(children: [
                        Positioned.fill(
                          child: Column(
                            children: [
                              Container(
                                height: 235.0,
                                decoration: BoxDecoration(
                                    color: AppColor.monoShade,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            currentSchedule.imagePath))),
                              ),
                              AppBox.verticalSpacer(space: 65.0)
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: Container(
                              padding:
                                  const EdgeInsets.all(AppBox.defaultPadding),
                              margin:
                                  const EdgeInsets.all(AppBox.defaultPadding),
                              height: 100.0,
                              width: width - AppBox.defaultPadding * 2,
                              decoration: BoxDecoration(
                                  color: AppColor.monoWhite,
                                  boxShadow: AppBox.defaultShadow,
                                  borderRadius: BorderRadius.circular(
                                      AppBox.defaultRadius)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Upcoming',
                                        style: TextStyle(
                                            fontSize: AppText.heading3),
                                      ),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              currentSchedule.date[0],
                                              style: const TextStyle(
                                                  fontSize:
                                                      AppText.heading1 + 4,
                                                  fontWeight: AppText.semibold),
                                            ),
                                            AppBox.horizontalSpacer(),
                                            Text(
                                              currentSchedule.date[1],
                                              style: const TextStyle(
                                                  fontSize: AppText.heading3),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.calendar_today_outlined))
                                ],
                              ),
                            ))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppBox.defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentSchedule.doctor,
                            style: const TextStyle(fontSize: AppText.heading3),
                          ),
                          AppBox.verticalSpacer(),
                          Text(
                            currentSchedule.title,
                            style: const TextStyle(
                                fontSize: AppText.heading2,
                                fontWeight: AppText.semibold),
                          ),
                          AppBox.verticalSpacer(),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: currentSchedule.detail
                                  .map((detail) => Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: AppBox.miniPadding),
                                        child: Text(
                                          detail,
                                          style: const TextStyle(
                                              fontSize: AppText.heading3),
                                        ),
                                      ))
                                  .toList())
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(AppBox.defaultPadding),
              child: Column(
                children: [
                  PillButtons().largeButton(
                      size: width - AppBox.defaultPadding * 2,
                      text: 'Message',
                      function: () {},
                      colors: AppGradient.natural),
                  AppBox.verticalSpacer(space: AppBox.defaultPadding),
                  PillButtons().largeButton(
                      size: width - AppBox.defaultPadding * 2,
                      text: 'Discard',
                      function: () {},
                      colors: [AppColor.statusError, AppColor.statusError])
                ],
              ),
            ))
      ]),
    );
  }
}
