import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/dashboard/presentation/widgets/custom_background_container.dart';

class OrderStatisticsWidget extends StatelessWidget {
  const OrderStatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 14,
      children: [
        Expanded(
          child: CustomBackgroundContainer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  '20',
                  style: AppTextStyle.bold52(
                    context,
                  ).copyWith(color: AppColors.primaryTextColor),
                ),
                Text(
                  AppStrings.runningOrders,
                  style: AppTextStyle.bold12(
                    context,
                  ).copyWith(color: AppColors.subTextColor),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: CustomBackgroundContainer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  '05',
                  style: AppTextStyle.bold52(
                    context,
                  ).copyWith(color: AppColors.primaryTextColor),
                ),
                Text(
                  AppStrings.orderRequest,
                  style: AppTextStyle.bold12(
                    context,
                  ).copyWith(color: AppColors.subTextColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
