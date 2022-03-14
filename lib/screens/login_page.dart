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
                    colors: [kNaturalPrimary, kNaturalSecondary])),
          )),
          Positioned(
            top: height / 2 - 240,
            left: -width / 2,
            child: Container(
              width: width * 2,
              height: width * 2,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kMonoWhite),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              height: height / 2 + 200,
              padding: const EdgeInsets.all(sDefaultPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: sDefaultPadding * 2),
                    child: Text(
                      "Welcome to \nMe.care",
                      style: TextStyle(
                          color: kNaturalSecondary,
                          fontSize: 28,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: sDefaultPadding),
                    child: Text(
                      "Sign in to Me.care",
                      style: TextStyle(
                          color: kMonoBlack,
                          fontFamily: 'Google Sans',
                          fontSize: tHeading3),
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
                              colors: gsNatural)),
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
