import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class PurchaseCounterItemWidget extends StatelessWidget {
  const PurchaseCounterItemWidget({
    super.key,
    required this.sign,
    required this.onTap,
  });
  final String sign;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.subTextColor,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(8),
        child: Text(
          sign,
          style: AppTextStyle.bold16(context).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
