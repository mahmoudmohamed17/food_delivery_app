import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/build_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.onSubmitted,
    this.controller,
    this.prefixIcon,
    this.readOnly = false,
  });
  final String? hintText;
  final void Function(String?)? onSubmitted;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyle.regular14(context),
      onSubmitted: onSubmitted,
      controller: controller,
      readOnly: readOnly,
      decoration: InputDecoration(
        fillColor: AppColors.backgrdContainerColor,
        filled: true,
        hintText: hintText,
        hintStyle: AppTextStyle.regular14(
          context,
        ).copyWith(color: AppColors.subTextColor),
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.all(24),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
