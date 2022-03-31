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
                  width: hLarge,
                  height: hLarge,
                  decoration: BoxDecoration(
                      color: kMonoShadow,
                      borderRadius: BorderRadius.circular(hLarge)),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: sDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontFamily: 'Google Sans', fontSize: tHeading3),
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
            padding: const EdgeInsets.all(sDefaultPadding),
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: tHeading3),
            ),
          ),
          Container(
            height: 250,
            color: kMonoShade,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: sSmallPadding),
            child: Row(
              children: [
                TextButton.icon(
                    style: TextButton.styleFrom(
                        primary: kStatusSuccess,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(rDefaultRadius))),
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up),
                    label: Text('$like')),
                TextButton.icon(
                    style: TextButton.styleFrom(
                        primary: kMonoShadow,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(rDefaultRadius))),
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_down),
                    label: Text('$dislike')),
                Expanded(
                  child: Container(),
                ),
                TextButton.icon(
                    style: TextButton.styleFrom(
                        primary: kMonoShadow,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(rDefaultRadius))),
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
