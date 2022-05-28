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
                    colors: AppGradient.pacific)),
          )),
          // Circle
          Positioned(
            top: height / 2 - 160,
            left: -width / 2,
            child: Container(
              width: width * 2,
              height: width * 2,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.monoWhite),
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
                  const Padding(
                    padding: EdgeInsets.all(AppBox.extraPadding),
                    child: Text(
                      "Choose your problems",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColor.pacificSecondary,
                          fontSize: 40,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppBox.largePadding),
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
                    padding: const EdgeInsets.all(AppBox.defaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PillButtons().largeButton(
                            text: "Next",
                            function: () {},
                            colors: AppGradient.pacific),
                        AppBox.verticalSpacer()
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
                      padding: const EdgeInsets.all(AppBox.miniPadding),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: AppColor.monoCeramic,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(56))),
                        child: const Text(
                          "Skip",
                          style: TextStyle(fontSize: AppText.heading3),
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
                colors: AppGradient.pacific,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: TextButton(
          style: TextButton.styleFrom(
              primary: AppColor.monoWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45.0))),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: AppText.heading3, color: AppColor.monoWhite),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
