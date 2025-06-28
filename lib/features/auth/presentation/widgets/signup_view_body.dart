import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:food_delivery_app/core/widgets/custom_password_text_form_field.dart';
import 'package:food_delivery_app/core/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_body_title.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/auth_template_body_widget.dart';
import 'package:go_router/go_router.dart';

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
  final GlobalKey _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

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
                  AppStrings.name,
                  style: AppTextStyle.regular14(
                    context,
                  ).copyWith(color: AppColors.primaryTextColor),
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
                  style: AppTextStyle.regular14(
                    context,
                  ).copyWith(color: AppColors.primaryTextColor),
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
                  style: AppTextStyle.regular14(
                    context,
                  ).copyWith(color: AppColors.primaryTextColor),
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
                  style: AppTextStyle.regular14(
                    context,
                  ).copyWith(color: AppColors.primaryTextColor),
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
                  textStyle: AppTextStyle.bold14(
                    context,
                  ).copyWith(color: Colors.white),
                  buttonColor: AppColors.primaryColor,
                  onPressed: () {
                    context.push(Routes.locationAccessView);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      backArrow: CustomIconButton(
        onTap: () {
          context.pop();
        },
        icon: FontAwesomeIcons.chevronLeft,
        iconSize: 20,
      ),
      title: AuthBodyTitle(
        title: AppStrings.signUp,
        subTitle: AppStrings.signUpHint,
      ),
    );
  }
}
