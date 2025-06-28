import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/category_food_badge.dart';
import 'package:go_router/go_router.dart';

class CategoryDetailsViewAppBar extends StatelessWidget {
  const CategoryDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          icon: FontAwesomeIcons.chevronLeft,
          iconSize: 20,
          backgrnColor: AppColors.iconBackgrnColor,
          iconColor: Colors.black,
          onTap: () {
            context.pop();
          },
        ),
        SizedBox(width: 16),
        CategoryFoodBadge(),
        Spacer(),
        CustomIconButton(
          onTap: () {},
          icon: FontAwesomeIcons.magnifyingGlass,
          iconSize: 20,
          iconColor: Colors.white,
          backgrnColor: AppColors.authBackgrdColor,
        ),
        SizedBox(width: 16),
        CustomIconButton(
          onTap: () {},
          svgPicture: AppAssets.imagesFilter,
          backgrnColor: AppColors.iconBackgrnColor,
        ),
      ],
    );
  }
}
