import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/data/models/ingredient_item_model.dart';

class IngredientItem extends StatelessWidget {
  const IngredientItem({super.key, required this.model});
  final IngredientItemModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            color: AppColors.extraLightPrimaryColor,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(14),
          child: SvgPicture.asset(
            model.icon,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        Text(
          model.label,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: AppTextStyle.medium12(
            context,
          ).copyWith(color: AppColors.subTextColor),
        ),
      ],
    );
  }
}
