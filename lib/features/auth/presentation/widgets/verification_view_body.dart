import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_arrow_back_widget.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_body_title.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_template_body_widget.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/otp_widget.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/resend_code_timer_widget.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTemplateBodyWidget(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.code,
                  style: AppTextStyle.regular14.copyWith(
                    color: AppColors.primaryTextColor,
                  ),
                ),
                ResendCodeTimerWidget(),
              ],
            ),
            SizedBox(height: 8),
            OTPWidget(
              onCompleted: (value) {
                log('OTP code: $value');
              },
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: AppStrings.verify,
                buttonColor: AppColors.primaryColor,
                textStyle: AppTextStyle.bold16.copyWith(color: Colors.white),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      backArrow: CustomArrowBackWidget(),
      title: AuthBodyTitle(
        title: AppStrings.verification,
        subTitle: AppStrings.codeSent,
      ),
    );
  }
}
