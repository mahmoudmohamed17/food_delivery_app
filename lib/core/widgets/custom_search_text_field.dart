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
    required this.onTap,
    this.controller,
  });
  final String hintText;
  final TextEditingController? controller;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyle.regular14(context),
      controller: controller,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.regular14(
          context,
        ).copyWith(color: AppColors.subTextColor),
        prefixIcon: SvgPicture.asset(
          AppAssets.imagesSearch,
          fit: BoxFit.scaleDown,
          colorFilter: const ColorFilter.mode(
            AppColors.subTextColor,
            BlendMode.srcIn,
          ),
        ),
        fillColor: AppColors.backgrdContainerColor,
        contentPadding: const EdgeInsets.all(24),
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
