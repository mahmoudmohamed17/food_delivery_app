import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/features/auth/presentation/views/forgot_password_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/location_access_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/signin_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/signup_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/verification_view.dart';
import 'package:food_delivery_app/features/home/presentation/views/category_details_view.dart';
import 'package:food_delivery_app/features/home/presentation/views/food_details_view.dart';
import 'package:food_delivery_app/features/home/presentation/views/home_view.dart';
import 'package:food_delivery_app/features/home/presentation/views/restaurant_details_view.dart';
import 'package:food_delivery_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:food_delivery_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: Routes.onboardingView,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: Routes.signinView,
      builder: (context, state) => const SigninView(),
    ),
    GoRoute(
      path: Routes.signupView,
      builder: (context, state) => const SignupView(),
    ),
    GoRoute(
      path: Routes.forgotPasswordView,
      builder: (context, state) => const ForgotPasswordView(),
    ),
    GoRoute(
      path: Routes.verificationView,
      builder: (context, state) => const VerificationView(),
    ),
    GoRoute(
      path: Routes.locationAccessView,
      builder: (context, state) => const LocationAccessView(),
    ),
    GoRoute(
      path: Routes.homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: Routes.restaurantDetailsView,
      builder: (context, state) => const RestaurantDetailsView(),
    ),
    GoRoute(
      path: Routes.foodCategoryDetailsView,
      builder: (context, state) => const CategoryDetailsView(),
    ),
    GoRoute(
      path: Routes.foodDetailsView,
      builder: (context, state) => const FoodDetailsView(),
    ),
  ],
);
