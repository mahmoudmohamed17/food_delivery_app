
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class AccessLocationButton extends StatelessWidget {
  const AccessLocationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        padding: const EdgeInsets.all(12),
        visualDensity: VisualDensity.standard,
      ),
      iconAlignment: IconAlignment.end,
      label: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Text(
          AppStrings.accessLocation,
          style: AppTextStyle.bold16.copyWith(color: Colors.white),
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.lightPrimaryColor,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.all(6),
            child: SvgPicture.asset(
              AppAssets.imagesMapPin,
              height: 24,
              width: 24,
            ),
          ),
        ),
      ),
    );
  }
}
