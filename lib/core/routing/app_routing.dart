import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/features/auth/presentation/views/forgot_password_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/location_access_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/signin_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/signup_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/verification_view.dart';
import 'package:food_delivery_app/features/home/presentation/views/home_view.dart';
import 'package:food_delivery_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:food_delivery_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(
      path: Routes.onboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(path: Routes.signinView, builder: (context, state) => SigninView()),
    GoRoute(path: Routes.signupView, builder: (context, state) => SignupView()),
    GoRoute(
      path: Routes.forgotPasswordView,
      builder: (context, state) => ForgotPasswordView(),
    ),
    GoRoute(
      path: Routes.verificationView,
      builder: (context, state) => VerificationView(),
    ),
    GoRoute(
      path: Routes.locationAccessView,
      builder: (context, state) => LocationAccessView(),
    ),
    GoRoute(
      path: Routes.homeView,
      builder: (context, state) => HomeView(),
    ),
  ],
);
