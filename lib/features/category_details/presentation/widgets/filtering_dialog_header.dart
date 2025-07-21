import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

class FilteringDialogHeader extends StatelessWidget {
  const FilteringDialogHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.filterYourSearch,
          style: AppTextStyle.regular16(
            context,
          ).copyWith(color: AppColors.primaryTextColor),
        ),
        CustomIconButton(
          onTap: () {
            context.pop();
          },
          icon: FontAwesomeIcons.xmark,
          backgrnColor: AppColors.iconBackgrnColor,
          iconColor: AppColors.subTextColor,
        ),
      ],
    );
  }
}
