import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/price_filter_button.dart';

class PricingFilteringWidget extends StatefulWidget {
  const PricingFilteringWidget({super.key, this.onTap});
  final Function(String?)? onTap;

  @override
  State<PricingFilteringWidget> createState() => _PricingFilteringWidgetState();
}

class _PricingFilteringWidgetState extends State<PricingFilteringWidget> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final items = [
      AppStrings.oneDollars,
      AppStrings.twoDollars,
      AppStrings.threeDollars,
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.pricing,
            style: AppTextStyle.regular14(
              context,
            ).copyWith(color: AppColors.primaryTextColor),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: List.generate(items.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _activeIndex = index;
                });
                widget.onTap?.call(items[index]);
              },
              child: Padding(
                padding: EdgeInsets.only(right: index == 2 ? 0 : 8),
                child: PriceFilterButton(
                  label: items[index],
                  isTapped: _activeIndex == index,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
