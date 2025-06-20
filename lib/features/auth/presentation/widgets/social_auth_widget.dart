import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/features/auth/data/models/social_auth_model.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/social_auth_item.dart';

class SocialAuthWidget extends StatelessWidget {
  const SocialAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      SocialAuthModel(
        icon: Assets.imagesFacebook,
        color: AppColors.facebookBackgrdColor,
        onPresed: () {},
      ),
      SocialAuthModel(
        icon: Assets.imagesGoogle,
        color: AppColors.backgrdContainerColor,
        onPresed: () {},
      ),
      SocialAuthModel(
        icon: Assets.imagesApple,
        color: AppColors.primaryTextColor,
        onPresed: () {},
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(items.length, (index) {
        return SocialAuthItem(model: items[index]);
      }),
    );
  }
}
