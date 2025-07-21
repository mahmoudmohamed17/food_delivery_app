import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class PriceFilterButton extends StatelessWidget {
  const PriceFilterButton({
    super.key,
    required this.label,
    required this.isTapped,
  });
  final String label;
  final bool isTapped;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isTapped ? AppColors.primaryColor : Colors.white,
        border: BoxBorder.all(
          color: isTapped ? Colors.transparent : AppColors.subTextColor,
        ),
        shape: BoxShape.circle,
      ),
      height: 45,
      width: 45,
      alignment: Alignment.center,
      child: Text(
        label,
        style: AppTextStyle.regular14(
          context,
        ).copyWith(color: isTapped ? Colors.white : AppColors.subTextColor),
      ),
    );
  }
}
