import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({super.key, required this.title, this.trailing});
  final String title;
  final Widget? trailing;

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
            Text(title, style: AppTextStyle.regular20(context)),
          ],
        ),
        ?trailing,
      ],
    );
  }
}
