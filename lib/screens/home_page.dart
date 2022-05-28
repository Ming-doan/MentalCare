// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_care/components/categories.dart';
import 'package:mental_care/components/post.dart';
import 'package:mental_care/components/schedule_card.dart';
import 'package:mental_care/constants/constant.dart';
import 'package:mental_care/models/post_model.dart';
import 'package:mental_care/models/schedule_model.dart';
import 'package:mental_care/screens/medical_handbook_page.dart';
import 'package:mental_care/screens/schedule_detail_page.dart';
import 'package:mental_care/services/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String user = 'Thousandmile';
  late double opacity;

  void setOpacity(double position) {
    setState(() {
      if (position <= 315.0) {
        opacity = position / 315.0;
        if (opacity > 1.0) {
          opacity = 1.0;
        }
      } else {
        opacity = 1.0;
      }
    });
  }

  @override
  void initState() {
    opacity = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppColor.monoWhite.withOpacity(opacity),
        statusBarIconBrightness: Brightness.dark));

    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: NotificationListener<ScrollNotification>(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            children: [
              ClipPath(
                clipper: CircleClipper(),
                child: Container(
                    width: width,
                    height: height / 2 + 20,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: AppGradient.natural,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SurveyButton(),
                  const CategoriesList(),
                  AppBox.verticalSpacer(space: AppBox.miniPadding),
                  Upcomming(),
                  AppBox.verticalSpacer(space: AppBox.miniPadding),
                  Spotlight(),
                  AppBox.verticalSpacer(space: 100.0)
                ],
              )
            ],
          ),
          onNotification: (ScrollNotification scrollInfo) {
            if (scrollInfo.metrics.axis == Axis.vertical) {
              setOpacity(scrollInfo.metrics.pixels);
            }
            return true;
          },
        )),
        Positioned.fill(
            child: Column(
          children: [
            SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppBox.defaultPadding,
                    vertical: AppBox.smallPadding),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      color: AppColor.monoLight.withOpacity(opacity))
                ], color: AppColor.monoWhite.withOpacity(opacity)),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                          text: TextSpan(
                              style: const TextStyle(
                                  color: AppColor.monoBlack,
                                  fontSize: AppText.heading3),
                              children: [
                            const TextSpan(text: "Welcome "),
                            TextSpan(
                                text: "$user 👋",
                                style: const TextStyle(
                                    fontWeight: AppText.semibold))
                          ])),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_rounded))
                  ],
                ),
              ),
            )
          ],
        )),
      ]),
    );
  }
}

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 45);
    path.quadraticBezierTo(
        size.width / 2, size.height + 35, size.width, size.height - 45);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppBox.defaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppBox.defaultPadding),
        height: 230,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowIndicator();
            return true;
          },
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Categories.verticleCard(
                  text: "Take Advice",
                  imagePath: "assets/images/doctor.png",
                  callback: () {}),
              const SizedBox(
                width: AppBox.defaultPadding,
              ),
              Categories.verticleCard(
                  text: "Find Doctor",
                  imagePath: "assets/images/search.png",
                  callback: () {}),
              const SizedBox(
                width: AppBox.defaultPadding,
              ),
              Categories.verticleCard(
                  text: "Handbook",
                  imagePath: "assets/images/medical-handbook.png",
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MedicalHandbookPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class SurveyButton extends StatelessWidget {
  const SurveyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppBox.defaultPadding,
          AppBox.defaultPadding, AppBox.defaultPadding, 0),
      child: TextButton(
        style: TextButton.styleFrom(
            alignment: Alignment.topLeft,
            primary: AppColor.monoWhite,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppBox.defaultRadius))),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What is your problems today?',
              style: TextStyle(
                  color: AppColor.monoBlack,
                  fontSize: AppText.heading2,
                  fontWeight: AppText.semibold),
            ),
            AppBox.verticalSpacer(space: 5),
            const Text(
              'Take a quiz',
              style: TextStyle(
                  color: AppColor.naturalSecondary,
                  fontSize: AppText.heading4 + 4),
            ),
          ],
        ),
      ),
    );
  }
}

class Upcomming extends StatelessWidget {
  Upcomming({
    Key? key,
  }) : super(key: key);

  Schedule schedule = Utils.getUpcoming();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppBox.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: AppBox.defaultPadding),
            child: Text(
              "Upcoming",
              style: TextStyle(
                  fontSize: AppText.heading2, fontWeight: AppText.semibold),
            ),
          ),
          ScheduleCard.mediumCard(
              date: schedule.date,
              title: schedule.title,
              doctor: schedule.doctor,
              imagePath: schedule.imagePath,
              callback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScheduleDetailPage(
                              currentSchedule: schedule,
                            )));
              })
        ],
      ),
    );
  }
}

class Spotlight extends StatelessWidget {
  Spotlight({Key? key}) : super(key: key);

  Post posts = Utils.getSpotlight();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppBox.defaultPadding,
        ),
        const Padding(
          padding: EdgeInsets.all(AppBox.defaultPadding),
          child: Text(
            "Patient Thoguht",
            style: TextStyle(
                fontSize: AppText.heading2, fontWeight: AppText.semibold),
          ),
        ),
        PostItem(
          name: posts.name,
          date: posts.date,
          text: posts.content,
          like: posts.like,
          dislike: posts.dislike,
        ),
      ],
    );
  }
}
