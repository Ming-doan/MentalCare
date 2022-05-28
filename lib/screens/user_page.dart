import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_care/constants/constant.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        children: [
          ClipPath(
            clipper: CircleClipper(),
            child: Container(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(AppBox.miniPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.cached_outlined,
                                  size: AppText.heading1,
                                )),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.mode_edit_outlined,
                                  size: AppText.heading1,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.settings_outlined,
                                  size: AppText.heading1,
                                )),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(AppBox.defaultPadding),
                          child: CircleAvatar(
                            radius: AppBox.extraSize,
                            backgroundColor: AppColor.monoShade,
                          ),
                        ),
                        const Text(
                          'Thousandmile',
                          style: TextStyle(
                              fontSize: AppText.heading2,
                              fontWeight: AppText.bold),
                        ),
                        const Text(
                          "I'm a real F0",
                          style: TextStyle(
                              fontSize: AppText.heading3,
                              fontWeight: AppText.regular),
                        ),
                        AppBox.verticalSpacer(space: AppBox.largePadding),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  '10',
                                  style: TextStyle(
                                      fontSize: AppText.heading1 + 5,
                                      fontWeight: AppText.bold),
                                ),
                                Text(
                                  'Asked',
                                  style: TextStyle(fontSize: AppText.heading3),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  '20',
                                  style: TextStyle(
                                      fontSize: AppText.heading1 + 5,
                                      fontWeight: AppText.bold),
                                ),
                                Text(
                                  'Liked',
                                  style: TextStyle(fontSize: AppText.heading3),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  '30',
                                  style: TextStyle(
                                      fontSize: AppText.heading1 + 5,
                                      fontWeight: AppText.bold),
                                ),
                                Text(
                                  'Shared',
                                  style: TextStyle(fontSize: AppText.heading3),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                width: width,
                height: height / 2 + 20,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: AppGradient.natural,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight))),
          ),
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  shape: ,
                    primary: AppColor.monoBlack,
                    padding: EdgeInsets.all(AppBox.extraPadding)),
                onPressed: () {},
                child: Column(
                  children: [
                    Icon(
                      Icons.collections_bookmark_outlined,
                      size: AppText.heading1 * 1.5,
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(fontSize: AppText.heading3),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
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
