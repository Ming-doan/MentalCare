import 'package:flutter/material.dart';
import 'package:mental_care/models/post_model.dart';
import 'package:mental_care/models/notification_model.dart';
import 'package:mental_care/models/schedule_model.dart';
import 'package:mental_care/screens/home_page.dart';

class Utils {
  static List<Post> getMockedPost() {
    return [
      Post(
          postID: 1,
          name: 'Van Tenn',
          date: 'Jan 2 2023',
          content:
              'Thank you so much!!\nYou help me getting on with my friends',
          like: 20,
          dislike: 100),
      Post(
          postID: 2,
          name: 'Thounsandmile',
          date: 'Jun 22 2023',
          content:
              'Thank you so much!!\nYou help me getting on with my friends',
          like: 100,
          dislike: 10),
      Post(
          postID: 3,
          name: 'Ming',
          date: 'Apr 7 2023',
          content:
              'Thank you so much!!\nYou help me getting on with my friends',
          like: 20,
          dislike: 100),
    ];
  }

  static List<Schedule> getMockedSchedule() {
    return [
      Schedule(
        title: "Getting over stress and cyber bullying",
        detail: [
          "The patient is becoming extremely stressed because she was given too many dealines"
        ],
        date: ["20:00", "January 6 2022"],
        doctor: "Dr Phan Gia Bao",
        imagePath:
            "https://docosan.com/blog/wp-content/uploads/2021/05/stress-nang-min-e1620809978914.png",
      ),
      Schedule(
          title: "How to overcome low score",
          detail: [
            "Studying Math and taking about The Three Kingdom",
            "Understand how the speed machine work"
          ],
          date: ["08:00", "February 15 2022"],
          doctor: "Dr Nguyen Bao Viet",
          imagePath: "https://blog.prepscholar.com/hubfs/main_lowgrade.jpg"),
      Schedule(
          title: "What should you do after broken with girlfriend",
          detail: [
            "Most of boy nowadays getting trouble of forgeting ex-girlfriend and backing to the regular habits"
          ],
          date: ["12:00", "April 7 2022"],
          doctor: "Dr Phan Gia Bao",
          imagePath:
              "https://benhlytramcam.vn/wp-content/uploads/2018/08/tram-cam-sau-chia-tay-e1535874235961.jpg")
    ];
  }

  static List<NotificationModel> getMockedNotification() {
    return [
      NotificationModel(
          title: 'Ming send you a message',
          date: 'Wed 16 2022',
          imagePath:
              'https://sg.malverninternational.com/wp-content/uploads/2018/12/Unknown-Boy.jpg',
          isRead: false)
    ];
  }

  static Schedule getUpcoming() {
    List<Schedule> schedule = getMockedSchedule();
    return schedule[0];
  }

  static Post getSpotlight() {
    List<Post> spotlightPost = getMockedPost();
    Post mostConcern = spotlightPost[0];
    for (int i = 0; i < spotlightPost.length; i++) {
      if (spotlightPost[i].like > mostConcern.like) {
        mostConcern = spotlightPost[i];
      }
    }
    return mostConcern;
  }
}
