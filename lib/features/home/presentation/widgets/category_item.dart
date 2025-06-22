import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: context.height * 0.1847,
            maxWidth: context.width * 0.4,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350]!,
                spreadRadius: 0.5,
                blurRadius: 5,
                offset: Offset(1, 1),
              ),
            ],
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 4,
            children: [
              SizedBox(
                width: context.width * 0.4,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Text(
                      AppStrings.pizza,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.bold18.copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: (context.width * 0.4) / 10,
                children: [
                  Text(
                    AppStrings.starting,
                    style: AppTextStyle.regular14.copyWith(
                      color: AppColors.subTextColor,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      AppStrings.price75,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.regular16.copyWith(
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -(context.height * 0.2) / 2,
          child: Image.asset(Assets.imagesPizza, height: context.height * 0.2),
        ),
      ],
    );
  }
}
