import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_text_form_field.dart';

class UserProfileTextInput extends StatelessWidget {
  const UserProfileTextInput({
    super.key,
    required this.label,
    required this.initialValue,
  });
  final String label;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          label,
          style: AppTextStyle.regular14(
            context,
          ).copyWith(color: AppColors.primaryTextColor),
        ),
        CustomTextFormField(
          initialVAlue: initialValue,
          hintText: label,
          onFieldSubmitted: (value) {},
        ),
      ],
    );
  }
}
