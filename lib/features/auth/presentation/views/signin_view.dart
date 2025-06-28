import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.authBackgrdColor,
      body: SigninViewBody(),
    );
  }
}
