import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

class TrailingHomeAppBarWidget extends StatelessWidget {
  const TrailingHomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomIconButton(
          svgPicture: AppAssets.imagesBasket,
          backgrnColor: AppColors.authBackgrdColor,
          iconColor: Colors.white,
          onTap: () {
            context.push(Routes.cartView);
          },
        ),
        Positioned(
          top: -8,
          right: 0,
          child: CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.primaryColor,
            child: Text(
              '2',
              style: AppTextStyle.bold16(context).copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
