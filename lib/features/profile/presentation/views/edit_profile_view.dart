import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/edit_profile_app_bar.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_data_input_fields.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_profile_picture.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          children: [
            const SizedBox(height: 16),
            const EditProfileAppBar(),
            const SizedBox(height: 24),
            const UserProfilePicture(),
            const SizedBox(height: 32),
            const UserDataInputFields(),
            const SizedBox(height: 32),
            CustomButton(
              onPressed: () {},
              text: AppStrings.save,
              buttonColor: AppColors.primaryColor,
              textStyle: AppTextStyle.bold16(
                context,
              ).copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
