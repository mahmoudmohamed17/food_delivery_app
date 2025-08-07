import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/label_selecting_widget.dart';

class LocationLabelSelectionWidget extends StatelessWidget {
  const LocationLabelSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          AppStrings.labelAs,
          style: AppTextStyle.regular14(
            context,
          ).copyWith(color: AppColors.primaryTextColor),
        ),
        LabelSelectingWidget(
          onTap: (obj) {
            log('Object: $obj');
          },
        ),
      ],
    );
  }
}
