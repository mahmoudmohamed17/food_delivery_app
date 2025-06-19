import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
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
    Future.delayed(const Duration(seconds: 2), () async {
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        context.go(Routes.onboardingView);
      }
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
            child: SvgPicture.asset(Assets.imagesEllipseUp),
          ),
          Center(child: SvgPicture.asset(Assets.imagesLogo)),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(Assets.imagesEllipseDown),
          ),
        ],
      ),
    );
  }
}
