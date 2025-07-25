import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: SvgPicture.asset(AppAssets.imagesOnboarding2)),
        const SizedBox(height: 4),
        Text(
          AppStrings.onboardingTitle2,
          textAlign: TextAlign.center,
          style: AppTextStyle.bold24(
            context,
          ).copyWith(color: AppColors.primaryTextColor),
        ),
        const SizedBox(height: 16),
        Text(
          AppStrings.onboardingSubtitle2,
          textAlign: TextAlign.center,
          style: AppTextStyle.regular16(
            context,
          ).copyWith(color: AppColors.subTextColor),
        ),
      ],
    );
  }
}
