import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.foodDetailsView);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[350]!,
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(AppAssets.imagesBurger),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: context.width,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Text(
                    AppStrings.burgerFerguson,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.bold16(
                      context,
                    ).copyWith(color: AppColors.primaryTextColor),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: context.width,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Text(
                    AppStrings.spicyRestaurant,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.regular14(
                      context,
                    ).copyWith(color: AppColors.subTextColor),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.price40,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.bold16(
                    context,
                  ).copyWith(color: AppColors.primaryTextColor),
                ),
                CustomIconButton(
                  onTap: () {},
                  icon: FontAwesomeIcons.plus,
                  backgrnColor: AppColors.primaryColor,
                  iconColor: Colors.white,
                  backgrnRadius: 20,
                  iconSize: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
