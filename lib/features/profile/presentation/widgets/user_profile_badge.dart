import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class UserProfileBadge extends StatelessWidget {
  const UserProfileBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        const CircleAvatar(radius: 55, backgroundColor: AppColors.primaryColor),
        SizedBox(
          width: context.width * 0.55,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(
                AppStrings.vishalKhadok,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.bold20(context),
              ),
              Text(
                AppStrings.bioValue,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.regular14(
                  context,
                ).copyWith(color: AppColors.subTextColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
