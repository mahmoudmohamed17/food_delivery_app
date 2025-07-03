import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/food_details/presentation/widgets/purchase_counter_item_widget.dart';

class PurchaseBottomSheetBody extends StatefulWidget {
  const PurchaseBottomSheetBody({super.key});

  @override
  State<PurchaseBottomSheetBody> createState() =>
      _PurchaseBottomSheetBodyState();
}

class _PurchaseBottomSheetBodyState extends State<PurchaseBottomSheetBody> {
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.price32,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppTextStyle.regular28(
                context,
              ).copyWith(color: AppColors.primaryTextColor),
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.authBackgrdColor,
                borderRadius: BorderRadius.all(Radius.circular(45)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                spacing: 20,
                mainAxisSize: MainAxisSize.min,
                children: [
                  PurchaseCounterItemWidget(
                    onTap: () {
                      if (_itemCount > 1) {
                        setState(() {
                          _itemCount--;
                        });
                      }
                    },
                    sign: '-',
                  ),
                  SizedBox(
                    width: context.width * 0.077,
                    child: Text(
                      '$_itemCount',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.bold16(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ),
                  PurchaseCounterItemWidget(
                    onTap: () {
                      setState(() {
                        _itemCount++;
                      });
                    },
                    sign: '+',
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () {},
            text: AppStrings.addToCart,
            buttonColor: AppColors.primaryColor,
            textStyle: AppTextStyle.bold16(
              context,
            ).copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
