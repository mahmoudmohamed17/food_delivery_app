import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class AllCategoriesHeader extends StatelessWidget {
  const AllCategoriesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.allCategories,
          style: AppTextStyle.regular20.copyWith(
            color: AppColors.primaryTextColor,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              Text(
                AppStrings.seeAll,
                style: AppTextStyle.regular16.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: SvgPicture.asset(
                  Assets.imagesArrow,
                  colorFilter: ColorFilter.mode(
                    AppColors.subTextColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
