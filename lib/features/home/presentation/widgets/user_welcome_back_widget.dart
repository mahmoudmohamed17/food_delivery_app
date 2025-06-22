
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class UserWelcomeBackWidget extends StatelessWidget {
  const UserWelcomeBackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: AppStrings.heyUser,
            style: AppTextStyle.regular16.copyWith(
              color: AppColors.primaryTextColor,
            ),
          ),
          TextSpan(
            text: AppStrings.welcomeBack,
            style: AppTextStyle.bold16.copyWith(
              color: AppColors.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
