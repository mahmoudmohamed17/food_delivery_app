import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class RestaurantCategoryFoodItem extends StatelessWidget {
  const RestaurantCategoryFoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350]!,
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),

              child: Image.asset(AppAssets.imagesBurger, fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: 4),
          SizedBox(
            width: context.width * 0.408,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: 0.85,
                child: Text(
                  AppStrings.burgerFerguson,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.bold16.copyWith(
                    color: AppColors.primaryTextColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          SizedBox(
            width: context.width * 0.408,

            child: Align(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: 0.85,
                child: Text(
                  AppStrings.spicyRestaurant,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.regular14.copyWith(
                    color: AppColors.subTextColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.price40,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.bold16.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  visualDensity: VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  shape: CircleBorder(),
                  padding: EdgeInsets.zero,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    AppAssets.imagesPlus,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
