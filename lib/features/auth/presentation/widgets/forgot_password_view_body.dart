import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:food_delivery_app/core/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_body_title.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_template_body_widget.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthTemplateBodyWidget(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.email,
                style: AppTextStyle.regular14(
                  context,
                ).copyWith(color: AppColors.primaryTextColor),
              ),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: AppStrings.exampleEmail,
              controller: _emailController,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: AppStrings.sendCode,
                textStyle: AppTextStyle.bold14(
                  context,
                ).copyWith(color: Colors.white),
                buttonColor: AppColors.primaryColor,
                onPressed: () {
                  context.push(Routes.verificationView);
                },
              ),
            ),
          ],
        ),
      ),
      backArrow: CustomIconButton(
        onTap: () {
          context.pop();
        },
        icon: FontAwesomeIcons.chevronLeft,
        iconSize: 20,
      ),
      title: const AuthBodyTitle(
        title: AppStrings.forgotPassword,
        subTitle: AppStrings.forgotPasswordHint,
      ),
    );
  }
}
