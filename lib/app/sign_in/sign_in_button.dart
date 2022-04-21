import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:timetrackerapp/common_widget/custom_elevated_button.dart';

class SignInButton extends CustonElevatedButton {
  SignInButton(
      {required String text,
      required Color color,
      required Color textColor,
      required VoidCallback onPressed})
      : super(
            color: color,
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 15.0),
            ),
            height: 40);
}
