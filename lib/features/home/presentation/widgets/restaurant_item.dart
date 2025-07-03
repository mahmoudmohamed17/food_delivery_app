import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/restaurant_info_widget.dart';
import 'package:go_router/go_router.dart';

class RestaurantItem extends StatelessWidget {
  const RestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.restaurantDetailsView);
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: context.width),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                AppAssets.imagesRestaurantPicture,
                height: context.height * 0.2,
                width: context.width,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.roseGarden,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.regular20(
                      context,
                    ).copyWith(color: AppColors.primaryTextColor),
                  ),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.burgerChickenRicheWings,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.regular14(
                      context,
                    ).copyWith(color: AppColors.subTextColor),
                  ),
                ),
                const SizedBox(height: 16),
                const RestaurantInfoWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
