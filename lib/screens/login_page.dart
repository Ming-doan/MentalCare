import 'package:flutter/material.dart';
import 'package:mental_care/components/buttons.dart';
import 'package:mental_care/components/input.dart';
import 'package:mental_care/constants/constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: AppGradient.natural)),
          )),
          Positioned(
            top: height / 2 - 240,
            left: -width / 2,
            child: Container(
              width: width * 2,
              height: width * 2,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.monoWhite),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              height: height / 2 + 200,
              padding: const EdgeInsets.all(AppBox.defaultPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: AppBox.largePadding),
                    child: Text(
                      "Welcome to \nMe.care",
                      style: TextStyle(
                          color: AppColor.naturalSecondary,
                          fontSize: 28,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: AppBox.defaultPadding),
                    child: Text(
                      "Sign in to Me.care",
                      style: TextStyle(
                          color: AppColor.monoBlack,
                          fontFamily: 'Google Sans',
                          fontSize: AppText.heading3),
                    ),
                  ),
                  InputBox()
                      .inputBox(label: 'Email', hint: 'email@example.com'),
                  InputBox().inputBox(
                      label: 'Password', hint: 'Enter at least 6 digits'),
                  Row(
                    children: [
                      Expanded(
                          child: PillButtons().largeButton(
                              text: "Sign in",
                              function: () {},
                              colors: AppGradient.natural)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
