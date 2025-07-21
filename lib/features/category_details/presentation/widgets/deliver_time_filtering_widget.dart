import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/filter_button_item.dart';

class DeliverTimeFilteringWidget extends StatefulWidget {
  const DeliverTimeFilteringWidget({super.key, this.onTap});
  final Function(String?)? onTap;

  @override
  State<DeliverTimeFilteringWidget> createState() =>
      _DeliverTimeFilteringWidgetState();
}

class _DeliverTimeFilteringWidgetState
    extends State<DeliverTimeFilteringWidget> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final items = [AppStrings.min10_15, AppStrings.min20, AppStrings.min30];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.deliverTime,
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
                child: FilterButtonItem(
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
