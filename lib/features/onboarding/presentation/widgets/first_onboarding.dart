import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppAssets.imagesOnboarding1),
        SizedBox(height: 4),
        Text(
          AppStrings.onboardingTitle1,
          textAlign: TextAlign.center,
          style: AppTextStyle.bold24(context).copyWith(
            color: AppColors.primaryTextColor,
          ),
        ),
        SizedBox(height: 16),
        Text(
          AppStrings.onboardingSubtitle1,
          textAlign: TextAlign.center,
          style: AppTextStyle.regular16(context).copyWith(color: AppColors.subTextColor),
        ),
      ],
    );
  }
}
