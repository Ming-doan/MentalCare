import 'package:flutter/material.dart';
import 'package:mental_care/components/buttons.dart';
import 'package:mental_care/constants/constant.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<String> choices = [
      'Depression',
      'Autism',
      'Bullying',
      'Unconfident',
      'Stress',
      'Others'
    ];

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
                    colors: [kPacificPrimary, kPacificSecondary])),
          )),
          // Circle
          Positioned(
            top: height / 2 - 160,
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
              height: height / 2 + 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(sDefaultPadding * 3),
                    child: Text(
                      "Choose your problems",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPacificSecondary,
                          fontSize: 40,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(sDefaultPadding * 2),
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: choices.length,
                        itemBuilder: (context, index) =>
                            Choices(text: choices[index]),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3,
                        ),
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
                            text: "Next", function: () {}, colors: gsPacific),
                        spacer()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // Skip button
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

class Choices extends StatelessWidget {
  final String text;

  const Choices({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 140.0,
        height: 45.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.0),
            gradient: LinearGradient(
                colors: [kPacificPrimary, kPacificSecondary],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: TextButton(
          style: TextButton.styleFrom(
              primary: kMonoWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45.0))),
          child: Text(
            text,
            style: TextStyle(fontSize: tHeading3, color: kMonoWhite),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
