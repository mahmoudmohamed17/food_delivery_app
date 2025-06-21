import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';

class LeadingAppBarWidget extends StatelessWidget {
  const LeadingAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      visualDensity: VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      padding: EdgeInsets.zero,
      icon: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.backgrdContainerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SvgPicture.asset(Assets.imagesMenu),
        ),
      ),
    );
  }
}
