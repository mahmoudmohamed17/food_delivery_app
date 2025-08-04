import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_text_field.dart';

class AddAddressInputField extends StatelessWidget {
  const AddAddressInputField({
    super.key,
    required this.label,
    required this.hintText,
    this.prefixIcon,
    this.onSubmitted,
  });
  final String label;
  final String hintText;
  final Widget? prefixIcon;
  final void Function(String?)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Text(
          label,
          style: AppTextStyle.regular14(
            context,
          ).copyWith(color: AppColors.primaryTextColor),
        ),
        CustomTextField(
          onSubmitted: onSubmitted,
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ],
    );
  }
}
