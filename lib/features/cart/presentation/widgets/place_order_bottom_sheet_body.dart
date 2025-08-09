import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/core/widgets/custom_text_field.dart';

class PlaceOrderBottomSheetBody extends StatelessWidget {
  const PlaceOrderBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.deliveryAddress,
          style: AppTextStyle.regular14(
            context,
          ).copyWith(color: AppColors.subTextColor),
        ),
        const SizedBox(height: 12),
        const CustomTextField(
          hintText: '2118 Thornridge Cir. Syracuse',
          readOnly: true,
        ),
        const SizedBox(height: 32),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${AppStrings.total}:',
                style: AppTextStyle.regular14(
                  context,
                ).copyWith(color: AppColors.subTextColor),
              ),
              const TextSpan(text: '\t\t\t\t'),
              TextSpan(text: r'$96', style: AppTextStyle.regular28(context)),
            ],
          ),
        ),
        const SizedBox(height: 32),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () {},
            text: AppStrings.placeOrder,
            textStyle: AppTextStyle.bold14(
              context,
            ).copyWith(color: Colors.white),
            buttonColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
