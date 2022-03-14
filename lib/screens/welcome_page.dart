import 'package:flutter/material.dart';
import 'package:mental_care/components/buttons.dart';
import 'package:mental_care/constants/constant.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String text =
        "We have all suffered being depression after a ton of deadlines or cypher bullying on the Internet. Both of them cause important problems.";

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [kNaturalPrimary, kNaturalSecondary])),
          )),
          // Circle
          Positioned(
            top: height / 2 - 80,
            left: -width / 2,
            child: Container(
              width: width * 2,
              height: width * 2,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kMonoWhite),
            ),
          ),
          // Content
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: width,
              height: height / 2 + 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(sDefaultPadding * 3),
                    child: Text(
                      "Me.care",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kNaturalSecondary,
                          fontSize: 40,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: sDefaultPadding * 3),
                      child: Text(
                        text,
                        style: TextStyle(
                            color: kMonoBlack,
                            fontSize: tHeading3 + 4,
                            fontFamily: 'Google Sans'),
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    padding: const EdgeInsets.all(sDefaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PillButtons().largeButton(
                            text: "Next", function: () {}, colors: gsNatural),
                        spacer()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // Skipp button
          Positioned.fill(
              child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(sMiniPadding),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: kMonoCeramic,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(56))),
                        child: const Text(
                          "Skip",
                          style: TextStyle(fontSize: tHeading3),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
