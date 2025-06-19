import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:food_delivery_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '',
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(
      path: Routes.onboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(
      path: Routes.signinView,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(
      path: Routes.signupView,
      builder: (context, state) => OnboardingView(),
    ),
  ],
);
