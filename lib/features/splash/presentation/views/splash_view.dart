import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/constants/app_constanst.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/services/shared_prefs.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2), () {});
      if (!mounted) return;
      navigateToNextView(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(AppAssets.imagesEllipseUp),
          ),
          Center(child: SvgPicture.asset(AppAssets.imagesLogo)),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppAssets.imagesEllipseDown),
          ),
        ],
      ),
    );
  }

  void navigateToNextView(BuildContext context) {
    SharedPrefs.getBool(isOnboardingSeen)
        ? SharedPrefs.getBool(isUserAuthenticated)
              ? context.go(Routes.homeView)
              : context.go(Routes.signinView)
        : context.go(Routes.onboardingView);
  }
}
