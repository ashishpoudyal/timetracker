import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ui';

import 'package:timetrackerapp/common_widget/custom_elevated_button.dart';

class SocialSignInButton extends CustonElevatedButton {
  SocialSignInButton(
      {required Color color,
      required String text,
      required String assetName,
      required VoidCallback onPressed,
      required Color textColor,
      required double height})
      : super(
            color: color,
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(assetName),
                Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Container(),
                )
              ],
            ),
            height: height);
}
