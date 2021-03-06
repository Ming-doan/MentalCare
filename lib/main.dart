// -----------------------------------------------
// me.care ~ 2022
// Google Solution Challenge 2022
// GDSC FPT DaNang - Vietnam
// ~ Main page ~
// -----------------------------------------------
import 'package:flutter/material.dart';
import 'package:mental_care/screens/community_page.dart';
import 'package:mental_care/screens/home_page.dart';
import 'package:mental_care/screens/login_page.dart';
import 'package:mental_care/screens/main_page.dart';
import 'package:mental_care/screens/notification_page.dart';
import 'package:mental_care/screens/schedule_page.dart';
import 'package:mental_care/screens/welcome_page.dart';
import 'package:mental_care/screens/welcome_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Google Sans'),
      title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}
