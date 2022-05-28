import 'package:flutter/material.dart';
import 'package:mental_care/components/app_bar.dart';
import 'package:mental_care/components/bottom_bar.dart';
import 'package:mental_care/components/schedule_card.dart';
import 'package:mental_care/constants/constant.dart';
import 'package:mental_care/models/schedule_model.dart';
import 'package:mental_care/screens/schedule_detail_page.dart';
import 'package:mental_care/services/utils.dart';

class SchedulePage extends StatelessWidget {
  SchedulePage({Key? key}) : super(key: key);

  List<Schedule> schedules = Utils.getMockedSchedule();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarContainer(
            appBarTitle: "Schedule",
            searchPrompt: "Tap to search schedules",
          ),
          Expanded(
            child: ListView.builder(
              padding:
                  const EdgeInsets.symmetric(vertical: AppBox.smallPadding),
              itemCount: schedules.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppBox.smallPadding,
                    horizontal: AppBox.defaultPadding),
                child: ScheduleCard.mediumCard(
                    date: schedules[index].date,
                    title: schedules[index].title,
                    doctor: schedules[index].doctor,
                    imagePath: schedules[index].imagePath,
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScheduleDetailPage(
                                  currentSchedule: schedules[index])));
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
