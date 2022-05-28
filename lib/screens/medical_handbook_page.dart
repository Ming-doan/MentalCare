import 'package:flutter/material.dart';
import 'package:mental_care/components/app_bar.dart';
import 'package:mental_care/constants/constant.dart';

class MedicalHandbookPage extends StatelessWidget {
  const MedicalHandbookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarContainer(
            appBarTitle: "Medical Handbook",
            searchPrompt: "Tap to search handbooks",
          ),
        ],
      ),
    );
  }
}
