import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/build_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
     this.hintText,
    this.textInputType = TextInputType.text,
    this.controller,
    this.initialVAlue, this.onFieldSubmitted,
  });
  final String? hintText;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final String? initialVAlue;
  final Function(String?)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.regular14(context),
      controller: controller,
      initialValue: initialVAlue,
      onFieldSubmitted: onFieldSubmitted,
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
        hintStyle: AppTextStyle.regular14(
          context,
        ).copyWith(color: AppColors.subTextColor),
        fillColor: AppColors.backgrdContainerColor,
        contentPadding: const EdgeInsets.all(24),
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
