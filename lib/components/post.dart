// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class PostItem extends StatelessWidget {
  final name;
  final date;
  final text;
  final like;
  final dislike;
  const PostItem(
      {Key? key, this.name, this.date, this.text, this.like, this.dislike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: AppBox.defaultShadow,
        color: AppColor.monoCeramic,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppBox.defaultPadding),
            child: Row(
              children: [
                Container(
                  width: AppBox.largeSize,
                  height: AppBox.largeSize,
                  decoration: BoxDecoration(
                      color: AppColor.monoShadow,
                      borderRadius: BorderRadius.circular(AppBox.largeSize)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppBox.defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontFamily: 'Google Sans',
                              fontSize: AppText.heading3),
                        ),
                        Text(date)
                      ],
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppBox.defaultPadding),
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: AppText.heading3),
            ),
          ),
          Container(
            height: 250,
            color: AppColor.monoShade,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppBox.smallPadding),
            child: Row(
              children: [
                TextButton.icon(
                    style: TextButton.styleFrom(
                        primary: AppColor.statusSuccess,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppBox.defaultRadius))),
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up),
                    label: Text('$like')),
                TextButton.icon(
                    style: TextButton.styleFrom(
                        primary: AppColor.monoShadow,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppBox.defaultRadius))),
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_down),
                    label: Text('$dislike')),
                Expanded(
                  child: Container(),
                ),
                TextButton.icon(
                    style: TextButton.styleFrom(
                        primary: AppColor.monoShadow,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppBox.defaultRadius))),
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                    label: const Text('Share')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
