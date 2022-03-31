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
                    colors: AppGradient.natural)),
          )),
          // Circle
          Positioned(
            top: height / 2 - 80,
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
              height: height / 2 + 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(AppBox.extraPadding),
                    child: Text(
                      "Me.care",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColor.naturalSecondary,
                          fontSize: 40,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppBox.extraPadding),
                      child: Text(
                        text,
                        style: const TextStyle(
                            color: AppColor.monoBlack,
                            fontSize: AppText.heading2,
                            fontFamily: 'Google Sans'),
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
                            colors: AppGradient.natural),
                        AppBox.verticalSpacer()
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
