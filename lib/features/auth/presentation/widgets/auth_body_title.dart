import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class AuthBodyTitle extends StatelessWidget {
  const AuthBodyTitle({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyle.bold30.copyWith(color: Colors.white),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: AppTextStyle.regular16.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
