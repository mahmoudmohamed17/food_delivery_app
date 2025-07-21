import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/rating_filter_button.dart';

class RatingFilteringWidget extends StatefulWidget {
  const RatingFilteringWidget({super.key, this.onTap});
  final Function(int?)? onTap;

  @override
  State<RatingFilteringWidget> createState() => _RatingFilteringWidgetState();
}

class _RatingFilteringWidgetState extends State<RatingFilteringWidget> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
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
          children: List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _activeIndex = index;
                  });
                  widget.onTap?.call(index + 1);
                },
                child: RatingFilterButton(isTapped: index <= _activeIndex),
              ),
            );
          }),
        ),
      ],
    );
  }
}
