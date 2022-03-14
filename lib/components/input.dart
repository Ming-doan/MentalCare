import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class InputBox {
  Widget inputBox({
    required String label,
    required String hint,
  }) {
    return TextField(
      obscureText: true,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: label, hintText: hint),
    );
  }
}
