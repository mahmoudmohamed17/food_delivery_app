import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/cart_item_counter.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        Expanded(child: Image.asset(AppAssets.imagesPasta, fit: BoxFit.fill)),
        Expanded(
          flex: 2,
          child: Column(
            spacing: 12,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.width * 0.40,
                child: Text(
                  'Pizza Calzone European',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.regular18(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                width: context.width * 0.40,
                child: Text(
                  r'$68',
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.bold16(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '14’’',
                    style: AppTextStyle.regular18(
                      context,
                    ).copyWith(color: AppColors.subTextColor),
                  ),
                  const CartItemCounter(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
