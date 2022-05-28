import 'package:flutter/material.dart';
import 'package:mental_care/components/bottom_bar.dart';
import 'package:mental_care/constants/constant.dart';
import 'package:mental_care/screens/community_page.dart';
import 'package:mental_care/screens/home_page.dart';
import 'package:mental_care/screens/notification_page.dart';
import 'package:mental_care/screens/schedule_page.dart';
import 'package:mental_care/screens/user_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [
    HomePage(),
    Community(),
    SchedulePage(),
    NotificationPage(),
    UserPage()
  ];

  late Widget currentPage;
  late int currentIndex;

  @override
  void initState() {
    currentPage = pages[0];
    currentIndex = 0;
    super.initState();
  }

  void handleBottomBarNavigation(int index) {
    setState(() {
      currentPage = pages[index];
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: currentPage),
          Positioned(
            bottom: 0,
            child: BottomBarContainer(
              callback: (index) => {handleBottomBarNavigation(index)},
              currentIndex: currentIndex,
              mainColor: AppColor.naturalSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
