import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/deliver_time_filtering_widget.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/filtering_dialog_header.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/offers_filtering_widget.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/pricing_filtering_widget.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/rating_filtering_widget.dart';

class FilteringDialog extends StatelessWidget {
  const FilteringDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FilteringDialogHeader(),
            const SizedBox(height: 16),
            OffersFilteringWidget(
              onTap: (value) {
                log('Filter: $value');
              },
            ),
            const SizedBox(height: 28),
            DeliverTimeFilteringWidget(
              onTap: (value) {
                log('Filter: $value');
              },
            ),
            const SizedBox(height: 28),
            PricingFilteringWidget(
              onTap: (value) {
                log('Filter: $value');
              },
            ),
            const SizedBox(height: 28),
            RatingFilteringWidget(
              onTap: (value) {
                log('Filter: $value');
              },
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                onPressed: () {},
                text: AppStrings.filter,
                buttonColor: AppColors.primaryColor,
                textStyle: AppTextStyle.bold16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
