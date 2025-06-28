import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class TrailingHomeAppBarWidget extends StatelessWidget {
  const TrailingHomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          visualDensity: VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.authBackgrdColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SvgPicture.asset(AppAssets.imagesBasket),
            ),
          ),
        ),
        Positioned(
          top: -12,
          right: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '2',
                style: AppTextStyle.bold16(context).copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
