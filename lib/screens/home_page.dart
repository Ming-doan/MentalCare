// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mental_care/components/buttons.dart';
import 'package:mental_care/components/categories.dart';
import 'package:mental_care/components/post.dart';
import 'package:mental_care/components/schedule_card.dart';
import 'package:mental_care/constants/constant.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  String user = 'Thousandmile';
  List<String> schDate = ["20:00", "January, 1st 2022"];
  String schTitle = "Getting over stress and prevent cypher bullying";
  String schDr = "Dr Phan Gia Bao";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
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
                Upcomming(schDate: schDate, schTitle: schTitle, schDr: schDr),
                const Spotlight(),
                const SizedBox(
                  height: 120,
                )
              ],
            )
          ],
        )),
        Positioned.fill(
            child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppBox.defaultPadding),
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
                    IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                  ],
                ),
              )
            ],
          ),
        )),
        Positioned(
          bottom: 0,
          child: Container(
            height: AppBox.extraSize + 10,
            width: width,
            decoration: BoxDecoration(
                color: AppColor.monoCeramic,
                boxShadow: AppBox.defaultShadow,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppBox.curvedRadius),
                    topRight: Radius.circular(AppBox.curvedRadius))),
          ),
        )
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
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Categories().verticleCard(text: "Take Advice"),
            const SizedBox(
              width: AppBox.defaultPadding,
            ),
            Categories().verticleCard(text: "Take Advice"),
            const SizedBox(
              width: AppBox.defaultPadding,
            ),
            Categories().verticleCard(text: "Take Advice")
          ],
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
      padding: const EdgeInsets.all(AppBox.defaultPadding),
      child: TextButton(
        style: TextButton.styleFrom(
            alignment: Alignment.topLeft, primary: AppColor.monoShade),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What is your problems today?',
              style: TextStyle(
                  color: AppColor.monoBlack,
                  fontFamily: 'Google Sans',
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
  final schDate;
  final schTitle;
  final schDr;
  const Upcomming(
      {Key? key,
      required this.schDate,
      required this.schTitle,
      required this.schDr})
      : super(key: key);

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
                  fontFamily: 'Google Sans',
                  fontSize: AppText.heading2,
                  fontWeight: AppText.semibold),
            ),
          ),
          ScheduleCard()
              .mediumCard(date: schDate, title: schTitle, doctor: schDr)
        ],
      ),
    );
  }
}

class Spotlight extends StatelessWidget {
  const Spotlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: AppBox.defaultPadding,
        ),
        Padding(
          padding: EdgeInsets.all(AppBox.defaultPadding),
          child: Text(
            "Patient Thoguht",
            style: TextStyle(
                fontFamily: 'Google Sans',
                fontSize: AppText.heading2,
                fontWeight: AppText.semibold),
          ),
        ),
        PostItem(
          name: "Van Ten",
          date: "Jan 2nd 2022",
          text: "Thank you so much!",
          like: 20,
          dislike: 100,
        ),
      ],
    );
  }
}
