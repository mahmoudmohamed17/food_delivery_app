import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/core/widgets/custom_password_text_form_field.dart';
import 'package:food_delivery_app/core/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_body_title.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_template_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthTemplateWidget(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.name,
                style: AppTextStyle.regular14.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 8),
            CustomTextFormField(
              hintText: AppStrings.johnDoe,
              controller: _nameController,
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.email,
                style: AppTextStyle.regular14.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 8),
            CustomTextFormField(
              hintText: AppStrings.exampleEmail,
              controller: _emailController,
            ),
            SizedBox(height: 24),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.password,
                style: AppTextStyle.regular14.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 8),
            CustomPasswordTextFormField(
              hintText: AppStrings.passwordValue,
              controller: _passwordController,
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.reTypePassword,
                style: AppTextStyle.regular14.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 8),
            CustomPasswordTextFormField(
              hintText: AppStrings.passwordValue,
              controller: _confirmPasswordController,
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: AppStrings.signUpButton,
                textStyle: AppTextStyle.bold14.copyWith(color: Colors.white),
                buttonColor: AppColors.primaryColor,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      backArrow: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 24,
        child: RotatedBox(
          quarterTurns: 1,
          child: SvgPicture.asset(Assets.imagesArrow),
        ),
      ),
      title: AuthBodyTitle(
        title: AppStrings.signUp,
        subTitle: AppStrings.signUpHint,
      ),
    );
  }
}
