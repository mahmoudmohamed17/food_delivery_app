import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_app_bar_view.dart';

class CartViewAppBar extends StatelessWidget {
  const CartViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarView(
      title: AppStrings.cart,
      btnColor: AppColors.darkModeColor,
      btnIconColor: Colors.white,
      titleColor: Colors.white,
      trailing: TextButton(
        onPressed: () {},
        child: Text(
          AppStrings.editItems,
          style: AppTextStyle.regular14(context).copyWith(
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
