import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';

class HistoryOrderItem extends StatelessWidget {
  const HistoryOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 24,
          children: [
            Text(AppStrings.food, style: AppTextStyle.regular14(context)),
            Text(
              AppStrings.completed,
              style: AppTextStyle.bold14(
                context,
              ).copyWith(color: AppColors.completedColor),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 16),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  AppAssets.imagesRestaurantPicture,
                  height: context.width * 0.203,
                  width: context.width * 0.203,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.pizzaHut,
                        style: AppTextStyle.bold14(context),
                      ),
                      Text(
                        '#12536',
                        style: AppTextStyle.regular14(context).copyWith(
                          color: AppColors.subTextColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.subTextColor,
                          decorationThickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Text(r'$23.63', style: AppTextStyle.bold14(context)),
                      Container(
                        width: 1,
                        height: 16,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '30 Jan, 12:30',
                        style: AppTextStyle.regular12(
                          context,
                        ).copyWith(color: AppColors.subTextColor),
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: AppColors.subTextColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        '03 Items',
                        style: AppTextStyle.regular12(
                          context,
                        ).copyWith(color: AppColors.subTextColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 32,
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {},
                text: AppStrings.trackOrder,
                textStyle: AppTextStyle.bold12(
                  context,
                ).copyWith(color: Colors.white),
                buttonColor: AppColors.primaryColor,
              ),
            ),
            Expanded(
              child: CustomButton(
                onPressed: () {},
                text: AppStrings.cancel,
                textStyle: AppTextStyle.bold12(
                  context,
                ).copyWith(color: AppColors.primaryColor),
                borderColor: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
