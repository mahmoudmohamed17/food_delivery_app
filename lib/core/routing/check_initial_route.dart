import 'package:food_delivery_app/core/constants/app_constanst.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/services/shared_prefs.dart';

String? checkInitialRoute() {
  return SharedPrefs.getBool(isOnboardingSeen)
      ? Routes.signinView
      : Routes.onboardingView;
}
