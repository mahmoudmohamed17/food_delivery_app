import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/data/models/restaurant_info_item_model.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_info_item.dart';

class RestaurantInfoWidget extends StatelessWidget {
  const RestaurantInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      RestaurantInfoItemModel(
        icon: AppAssets.imagesStar,
        text: AppStrings.dummyRate,
        textStyle: AppTextStyle.bold16(
          context,
        ).copyWith(color: AppColors.primaryTextColor),
      ),
      RestaurantInfoItemModel(
        icon: AppAssets.imagesDelivery,
        text: AppStrings.free,
        textStyle: AppTextStyle.regular14(
          context,
        ).copyWith(color: AppColors.primaryTextColor),
      ),
      RestaurantInfoItemModel(
        icon: AppAssets.imagesClock,
        text: AppStrings.min20,
        textStyle: AppTextStyle.regular14(
          context,
        ).copyWith(color: AppColors.primaryTextColor),
      ),
    ];
    return Row(
      spacing: 12,
      children: List.generate(items.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 24),
          child: RestaurantInfoItem(model: items[index]),
        );
      }),
    );
  }
}
