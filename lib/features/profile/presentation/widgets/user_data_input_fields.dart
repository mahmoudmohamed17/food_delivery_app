import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_profile_text_input.dart';

class UserDataInputFields extends StatelessWidget {
  const UserDataInputFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 24,
      children: [
        UserProfileTextInput(
          label: AppStrings.fullName,
          initialValue: AppStrings.vishalKhadok,
        ),
        UserProfileTextInput(
          label: AppStrings.email,
          initialValue: AppStrings.helloEmail,
        ),
        UserProfileTextInput(
          label: AppStrings.phoneNumber,
          initialValue: AppStrings.phoneValue,
        ),
        UserProfileTextInput(
          label: AppStrings.bio,
          initialValue: AppStrings.bioValue,
        ),
      ],
    );
  }
}
