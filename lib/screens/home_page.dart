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
                          colors: gsNatural,
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
                padding: const EdgeInsets.all(sDefaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: kMonoBlack, fontSize: tHeading3),
                              children: [
                            const TextSpan(text: "Welcome "),
                            TextSpan(
                                text: "$user 👋",
                                style: const TextStyle(fontWeight: wSemibold))
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
            height: hExtra + 10,
            width: width,
            decoration: BoxDecoration(
                color: kMonoCeramic,
                boxShadow: bsDefaultShadow,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(rDefaultRadius * 2),
                    topRight: Radius.circular(rDefaultRadius * 2))),
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
      padding: const EdgeInsets.symmetric(horizontal: sDefaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: sDefaultPadding),
        height: 230,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Categories().verticleCard(text: "Take Advice"),
            const SizedBox(
              width: sDefaultPadding,
            ),
            Categories().verticleCard(text: "Take Advice"),
            const SizedBox(
              width: sDefaultPadding,
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
      padding: const EdgeInsets.all(sDefaultPadding),
      child: TextButton(
        style: TextButton.styleFrom(
            alignment: Alignment.topLeft, primary: kMonoShade),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is your problems today?',
              style: TextStyle(
                  color: kMonoBlack,
                  fontFamily: 'Google Sans',
                  fontSize: tHeading2,
                  fontWeight: FontWeight.w700),
            ),
            spacer(space: 5),
            Text(
              'Take a quiz',
              style:
                  TextStyle(color: kNaturalSecondary, fontSize: tHeading4 + 4),
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
      padding: const EdgeInsets.all(sDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: sDefaultPadding),
            child: Text(
              "Upcoming",
              style: TextStyle(
                  fontFamily: 'Google Sans',
                  fontSize: tHeading2,
                  fontWeight: wSemibold),
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
          height: sDefaultPadding,
        ),
        Padding(
          padding: EdgeInsets.all(sDefaultPadding),
          child: Text(
            "Patient Thoguht",
            style: TextStyle(
                fontFamily: 'Google Sans',
                fontSize: tHeading2,
                fontWeight: wSemibold),
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
