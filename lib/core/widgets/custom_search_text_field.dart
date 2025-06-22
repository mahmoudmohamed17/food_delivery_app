import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/build_border.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyle.regular14,
      controller: controller,
      onTap: () {
        /// Type the logic of Cubit
        /// When tapping on it change the home view to the search view
        /// using the Cubit state
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.regular14.copyWith(
          color: AppColors.subTextColor,
        ),
        prefixIcon: SvgPicture.asset(
          Assets.imagesSearch,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            AppColors.subTextColor,
            BlendMode.srcIn,
          ),
        ),
        fillColor: AppColors.backgrdContainerColor,
        contentPadding: EdgeInsets.all(24),
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
