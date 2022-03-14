import 'package:flutter/material.dart';
import 'package:mental_care/components/buttons.dart';
import 'package:mental_care/constants/constant.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  String user = 'Thousandmile';

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
            Padding(
              padding: const EdgeInsets.all(sDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is your problems today?',
                    style: TextStyle(
                        color: kMonoBlack,
                        fontFamily: 'Google Sans',
                        fontSize: tHeading3 + 4,
                        fontWeight: FontWeight.w700),
                  ),
                  spacer(space: 5),
                  Text(
                    'Take a quiz',
                    style: TextStyle(
                        color: kNaturalSecondary, fontSize: tHeading4 + 4),
                  )
                ],
              ),
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
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700))
                          ])),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                  ],
                ),
              )
            ],
          ),
        ))
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
