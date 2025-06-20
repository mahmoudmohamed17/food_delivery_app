import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/build_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.textInputType = TextInputType.text,
    required this.controller,
  });
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.regular14,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is required';
        } else {
          return null;
        }
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.regular14.copyWith(
          color: AppColors.subTextColor,
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

