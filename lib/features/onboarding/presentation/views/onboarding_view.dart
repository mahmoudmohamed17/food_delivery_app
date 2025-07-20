import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_constanst.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/services/shared_prefs.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/onboarding/presentation/widgets/first_onboarding.dart';
import 'package:food_delivery_app/features/onboarding/presentation/widgets/onboarding_navigator_widget.dart';
import 'package:food_delivery_app/features/onboarding/presentation/widgets/second_onboarding.dart';
import 'package:food_delivery_app/features/onboarding/presentation/widgets/third_onboarding.dart';
import 'package:go_router/go_router.dart';

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
                children: const [
                  FirstOnboarding(),
                  SecondOnboarding(),
                  ThirdOnboarding(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: DotsIndicator(
                dotsCount: 3,
                position: _currentPage.toDouble(),
                decorator: const DotsDecorator(
                  color: AppColors.extraLightPrimaryColor,
                  activeColor: AppColors.primaryColor,
                ),
              ),
            ),
            _currentPage == 2
                ? SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: AppStrings.getStarted,
                      buttonColor: AppColors.primaryColor,
                      textStyle: AppTextStyle.bold14(
                        context,
                      ).copyWith(color: Colors.white),
                      onPressed: () async {
                        context.go(Routes.signinView);
                        await SharedPrefs.setBool(isOnboardingSeen, true);
                      },
                    ),
                  )
                : OnboardingNavigatorWidget(
                    currentPage: _currentPage,
                    pageController: _pageController,
                  ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
