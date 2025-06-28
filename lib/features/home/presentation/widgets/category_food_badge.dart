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
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        spacing: 2,
        children: [
          Text(
            AppStrings.burger.toUpperCase(),
            style: AppTextStyle.bold12(
              context,
            ).copyWith(color: AppColors.primaryTextColor),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isTapped = !_isTapped;
              });
            },
            visualDensity: VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            padding: EdgeInsets.zero,
            icon: RotatedBox(
              quarterTurns: _isTapped ? 2 : 0,
              child: Icon(
                _isTapped
                    ? FontAwesomeIcons.caretDown
                    : FontAwesomeIcons.caretUp,
                size: 16,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
