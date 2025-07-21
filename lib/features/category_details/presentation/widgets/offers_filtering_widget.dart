import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/filter_button_item.dart';

class OffersFilteringWidget extends StatefulWidget {
  const OffersFilteringWidget({super.key, this.onTap});
  final Function(String?)? onTap;

  @override
  State<OffersFilteringWidget> createState() => _OffersFilteringWidgetState();
}

class _OffersFilteringWidgetState extends State<OffersFilteringWidget> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final items = [
      AppStrings.delivery,
      AppStrings.pickUp,
      AppStrings.offer,
      AppStrings.onlinePaymentAvailable,
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.offers,
            style: AppTextStyle.regular14(
              context,
            ).copyWith(color: AppColors.primaryTextColor),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: List.generate(items.length - 1, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _activeIndex = index;
                });
                widget.onTap?.call(items[index]);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterButtonItem(
                  label: items[index],
                  isTapped: _activeIndex == index,
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            setState(() {
              _activeIndex = items.length - 1;
            });
            widget.onTap?.call(items[items.length - 1]);
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: FilterButtonItem(
              label: items[items.length - 1],
              isTapped: _activeIndex == items.length - 1,
            ),
          ),
        ),
      ],
    );
  }
}
