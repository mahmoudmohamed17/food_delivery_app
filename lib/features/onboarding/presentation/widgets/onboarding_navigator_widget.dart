import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_constanst.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/services/shared_prefs.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class OnboardingNavigatorWidget extends StatelessWidget {
  const OnboardingNavigatorWidget({
    super.key,
    required int currentPage,
    required PageController pageController,
  }) : _currentPage = currentPage,
       _pageController = pageController;

  final int _currentPage;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            text: AppStrings.next,
            textStyle: AppTextStyle.bold14.copyWith(color: Colors.white),
            buttonColor: AppColors.primaryColor,
            onPressed: () {
              _pageController.animateToPage(
                _currentPage + 1,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            text: AppStrings.skip,
            textStyle: AppTextStyle.bold14.copyWith(
              color: AppColors.subTextColor,
            ),
            onPressed: () async {
              context.go(Routes.signinView);
              await SharedPrefs.setBool(isOnboardingSeen, true);
            },
          ),
        ),
      ],
    );
  }
}
