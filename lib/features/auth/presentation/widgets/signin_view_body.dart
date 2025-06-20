import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/core/widgets/custom_password_text_form_field.dart';
import 'package:food_delivery_app/core/widgets/custom_text_form_field.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          Assets.imagesEllipseUpForAuth,
          colorFilter: ColorFilter.mode(Color(0xff2C313C), BlendMode.srcIn),
          fit: BoxFit.fill,
        ),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(
            Assets.imagesVector,
            colorFilter: ColorFilter.mode(Color(0xff2C313C), BlendMode.srcIn),
          ),
        ),
        Positioned(
          top: 120,
          right: 0,
          left: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              Text(
                AppStrings.logIn,
                style: AppTextStyle.bold30.copyWith(color: Colors.white),
              ),
              Text(
                AppStrings.logInHint,
                style: AppTextStyle.regular16.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          top: 240,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            padding: EdgeInsets.all(24),
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
                    controller: TextEditingController(),
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
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            activeColor: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            side: BorderSide(
                              color: AppColors.subTextColor,
                              width: 2.0,
                            ),
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
                        onPressed: () {},
                        child: Text(
                          AppStrings.forgotPassword,
                          style: AppTextStyle.regular14.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: AppStrings.logInButton,
                      textStyle: AppTextStyle.bold14.copyWith(
                        color: Colors.white,
                      ),
                      buttonColor: AppColors.primaryColor,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 32),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${AppStrings.dontHaveAccount}  ',
                          style: AppTextStyle.regular16.copyWith(
                            color: AppColors.subTextColor,
                          ),
                        ),
                        TextSpan(
                          text: AppStrings.signUp,
                          style: AppTextStyle.regular16.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    AppStrings.or,
                    style: AppTextStyle.regular16.copyWith(
                      color: AppColors.subTextColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return CircleAvatar(
                        backgroundColor: AppColors.facebookBackgrdColor,
                        radius: 25,
                        child: SvgPicture.asset(Assets.imagesFacebook),
                      );
                    }),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
