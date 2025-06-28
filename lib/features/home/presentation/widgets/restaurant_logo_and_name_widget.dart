import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class RestaurantLogoAndNameWidget extends StatelessWidget {
  const RestaurantLogoAndNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Image.asset(AppAssets.imagesRestaurantLogo),
        Text(
          AppStrings.roseGarden,
          style: AppTextStyle.regular14(
            context,
          ).copyWith(color: AppColors.primaryTextColor),
        ),
      ],
    );
  }
}
