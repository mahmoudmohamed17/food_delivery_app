import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class CategoryFoodBadge extends StatefulWidget {
  const CategoryFoodBadge({super.key});

  @override
  State<CategoryFoodBadge> createState() => _CategoryFoodBadgeState();
}

class _CategoryFoodBadgeState extends State<CategoryFoodBadge> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.iconColor, width: 1.5),
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Row(
        spacing: 8,
        children: [
          Text(
            AppStrings.burger.toUpperCase(),
            style: AppTextStyle.bold12(
              context,
            ).copyWith(color: AppColors.primaryTextColor),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isTapped = !_isTapped;
              });
            },
            child: Icon(
              _isTapped ? FontAwesomeIcons.caretUp : FontAwesomeIcons.caretDown,
              size: 18,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
