import 'package:flutter/material.dart';
import 'package:mental_care/components/app_bar.dart';
import 'package:mental_care/constants/constant.dart';
import 'package:mental_care/models/notification_model.dart';
import 'package:mental_care/services/utils.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  List<NotificationModel> notifications = Utils.getMockedNotification();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarContainer(
            appBarTitle: 'Notification',
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined))
            ],
          ),
        ],
      ),
    );
  }
}
