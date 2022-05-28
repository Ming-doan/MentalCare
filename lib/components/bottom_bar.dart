import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';
import 'package:mental_care/main.dart';

class BottomBarContainer extends StatelessWidget {
  final Function callback;
  final int currentIndex;
  final Color mainColor;

  const BottomBarContainer(
      {Key? key,
      required this.callback,
      required this.currentIndex,
      required this.mainColor})
      : super(key: key);

  Widget bottomBarIcon(IconData icon, int index) {
    return Icon(
      icon,
      color: currentIndex == index ? mainColor : AppColor.monoBlack,
      size: currentIndex == index ? AppText.heading1 : AppText.heading2,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(children: [
      Positioned(
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: AppBox.defaultPadding),
          height: AppBox.extraSize + 10,
          width: width,
          decoration: BoxDecoration(
              color: AppColor.monoCeramic,
              boxShadow: AppBox.defaultShadow,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppBox.curvedRadius),
                  topRight: Radius.circular(AppBox.curvedRadius))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    callback(0);
                  },
                  icon: bottomBarIcon(Icons.home_outlined, 0)),
              IconButton(
                  onPressed: () {
                    callback(1);
                  },
                  icon: bottomBarIcon(Icons.public_outlined, 1)),
              IconButton(
                  onPressed: () {
                    callback(2);
                  },
                  icon: bottomBarIcon(Icons.event_note_outlined, 2)),
              IconButton(
                  onPressed: () {
                    callback(3);
                  },
                  icon: bottomBarIcon(Icons.notifications_outlined, 3)),
              IconButton(
                  onPressed: () {
                    callback(4);
                  },
                  icon: bottomBarIcon(Icons.person_outline, 4)),
            ],
          ),
        ),
      ),
      Positioned(
          bottom: 0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppBox.defaultPadding),
            child: AnimatedContainer(
              width: ((width - AppBox.defaultPadding * 2) / 5),
              child: Center(
                child: Container(
                  width: 48,
                  height: 8,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(AppBox.defaultRadius),
                          topRight: Radius.circular(AppBox.defaultRadius))),
                ),
              ),
              margin: EdgeInsets.only(
                  left: (((width - AppBox.defaultPadding * 2) / 5) *
                      currentIndex)),
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 300),
            ),
          ))
    ]);
  }
}
