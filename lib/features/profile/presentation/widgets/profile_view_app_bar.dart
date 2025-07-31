import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

class ProfileViewAppBar extends StatelessWidget {
  const ProfileViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            CustomIconButton(
              onTap: () {
                context.pop();
              },
              icon: FontAwesomeIcons.chevronLeft,
              iconColor: AppColors.primaryTextColor,
              backgrnColor: AppColors.iconBackgrnColor,
              iconSize: 18,
            ),
            Text(
              AppStrings.profile,
              style: AppTextStyle.regular20(context),
            ),
          ],
        ),
        CustomIconButton(
          onTap: () {},
          icon: FontAwesomeIcons.ellipsis,
          iconColor: AppColors.primaryTextColor,
          backgrnColor: AppColors.iconBackgrnColor,
          iconSize: 20,
        ),
      ],
    );
  }
}
