import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_constanst.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/services/shared_prefs.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/core/widgets/custom_password_text_form_field.dart';
import 'package:food_delivery_app/core/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_body_title.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_template_body_widget.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/dont_have_account_widget.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/remember_me_and_forgot_password_widget.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/social_auth_widget.dart';
import 'package:go_router/go_router.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthTemplateBodyWidget(
      body: Form(
        key: _formKey,
        autovalidateMode: _autovalidateMode,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              RememberMeAndForgotPasswordWidget(),
              SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: AppStrings.logInButton,
                  textStyle: AppTextStyle.bold14.copyWith(color: Colors.white),
                  buttonColor: AppColors.primaryColor,
                  onPressed: () async {
                    context.go(Routes.homeView);
                    await SharedPrefs.setBool(isUserAuthenticated, true);
                  },
                ),
              ),
              SizedBox(height: 32),
              DontHaveAccountWidget(),
              SizedBox(height: 24),
              Text(
                AppStrings.or,
                style: AppTextStyle.regular16.copyWith(
                  color: AppColors.subTextColor,
                ),
              ),
              SizedBox(height: 20),
              SocialAuthWidget(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
      title: AuthBodyTitle(
        title: AppStrings.logIn,
        subTitle: AppStrings.logInHint,
      ),
    );
  }
}
