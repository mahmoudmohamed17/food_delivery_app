import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_info_widget.dart';
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
        constraints: BoxConstraints(maxWidth: context.width * 0.87),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[350]!,
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                AppAssets.imagesRestaurantPicture,
                height: context.height * 0.19,
                width: context.width * 0.87,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.roseGarden,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.regular20.copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.burgerChickenRicheWings,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.regular14.copyWith(
                        color: AppColors.subTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  RestaurantInfoWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
