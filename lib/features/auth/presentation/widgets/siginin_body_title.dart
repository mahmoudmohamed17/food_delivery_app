import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class SigninBodyTitle extends StatelessWidget {
  const SigninBodyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(
          AppStrings.logIn,
          textAlign: TextAlign.center,
          style: AppTextStyle.bold30.copyWith(color: Colors.white),
        ),
        Text(
          AppStrings.logInHint,
          textAlign: TextAlign.center,
          style: AppTextStyle.regular16.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
