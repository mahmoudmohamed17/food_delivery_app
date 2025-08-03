import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_app_bar_view.dart';

class PersonalViewAppBar extends StatelessWidget {
  const PersonalViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarView(
      title: AppStrings.personalInfo,
      trailing: InkWell(
        onTap: () {},
        child: Text(
          AppStrings.edit,
          style: AppTextStyle.regular16(context).copyWith(
            color: AppColors.primaryColor,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryColor,
            decorationThickness: 1.5,
          ),
        ),
      ),
    );
  }
}
