import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';

class custombutton extends StatelessWidget {
  const custombutton({
    super.key,
    required this.text,
    this.background,
    this.foreground,
    this.height,
    this.width,
    this.radius,
    required this.onPressed,
  });

  final String text;
  final Color? background;
  final Color? foreground;
  final double? height;
  final double? width;
  final double? radius;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 60,
      width: width ?? 250,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              backgroundColor: background ?? AppColors.color1,
              foregroundColor: foreground ?? AppColors.whitecolor),
          child: Text(
            text,
            style: GetTitleStyle(fontWeight: FontWeight.w600),
          )),
    );
  }
}
