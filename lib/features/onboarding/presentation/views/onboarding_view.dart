import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/onboarding/presentation/widgets/first_onboarding.dart';
import 'package:food_delivery_app/features/onboarding/presentation/widgets/second_onboarding.dart';
import 'package:food_delivery_app/features/onboarding/presentation/widgets/third_onboarding.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  FirstOnboarding(),
                  SecondOnboarding(),
                  ThirdOnboarding(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: DotsIndicator(
                dotsCount: 3,
                position: _currentPage.toDouble(),
                decorator: DotsDecorator(
                  color: AppColors.extraLightPrimaryColor,
                  activeColor: AppColors.primaryColor,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: AppStrings.next,
                    textStyle: AppTextStyle.bold14.copyWith(
                      color: Colors.white,
                    ),
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
