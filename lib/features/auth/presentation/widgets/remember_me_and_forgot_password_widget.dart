import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:go_router/go_router.dart';

class RememberMeAndForgotPasswordWidget extends StatefulWidget {
  const RememberMeAndForgotPasswordWidget({super.key});

  @override
  State<RememberMeAndForgotPasswordWidget> createState() =>
      _RememberMeAndForgotPasswordWidgetState();
}

class _RememberMeAndForgotPasswordWidgetState
    extends State<RememberMeAndForgotPasswordWidget> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
              activeColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: BorderSide(color: AppColors.subTextColor, width: 2.0),
            ),
            Text(
              AppStrings.rememberMe,
              style: AppTextStyle.regular14.copyWith(
                color: AppColors.subTextColor,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            context.push(Routes.forgotPasswordView);
          },
          child: Text(
            AppStrings.forgotPassword,
            style: AppTextStyle.regular14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
