import 'package:flutter/material.dart';
import 'package:mental_care/components/app_bar.dart';
import 'package:mental_care/components/bottom_bar.dart';
import 'package:mental_care/components/post.dart';
import 'package:mental_care/constants/constant.dart';
import 'package:mental_care/models/post_model.dart';
import 'package:mental_care/services/utils.dart';

class Community extends StatelessWidget {
  Community({Key? key}) : super(key: key);

  List<Widget> postWideget = Utils.getMockedPost()
      .map((post) => Padding(
            padding: const EdgeInsets.symmetric(vertical: AppBox.smallPadding),
            child: PostItem(
              name: post.name,
              date: post.date,
              text: post.content,
              like: post.like,
              dislike: post.dislike,
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppBarContainer(
              appBarTitle: "Community",
              searchPrompt: "Tap to search posts",
            ),
            Expanded(
              child: ListView(children: [
                Container(
                  height: AppBox.extraSize,
                  margin: const EdgeInsets.only(
                      top: AppBox.defaultPadding,
                      left: AppBox.defaultPadding,
                      right: AppBox.defaultPadding,
                      bottom: AppBox.miniPadding),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppBox.defaultRadius),
                      gradient: LinearGradient(
                          colors: AppGradient.aqua,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(primary: AppColor.monoWhite),
                    child: const Center(
                      child: Text(
                        "Tap to create post",
                        style: TextStyle(fontSize: AppText.heading3),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: postWideget,
                ),
                const SizedBox(
                  height: 80,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
