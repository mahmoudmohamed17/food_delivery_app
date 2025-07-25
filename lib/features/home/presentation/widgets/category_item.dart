import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/data/models/category_item_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.model});

  final CategoryItemModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: context.width * 0.45),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350]!,
                spreadRadius: 0.9,
                blurRadius: 10,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
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
                      model.title,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.bold18(
                        context,
                      ).copyWith(color: AppColors.primaryTextColor),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.starting,
                    style: AppTextStyle.regular14(
                      context,
                    ).copyWith(color: AppColors.subTextColor),
                  ),
                  Flexible(
                    child: Text(
                      r'$'
                      '${model.startingPrice.toStringAsFixed(2)}',
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.regular16(
                        context,
                      ).copyWith(color: AppColors.primaryTextColor),
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
          top: -(context.height * 0.177) / 2,
          child: Image.asset(model.image, height: context.height * 0.177),
        ),
      ],
    );
  }
}
