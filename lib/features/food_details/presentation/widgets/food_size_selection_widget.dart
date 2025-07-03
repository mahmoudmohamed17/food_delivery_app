import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/food_details/presentation/widgets/food_size_selection_item.dart';

class FoodSizeSelectionWidget extends StatefulWidget {
  const FoodSizeSelectionWidget({super.key});

  @override
  State<FoodSizeSelectionWidget> createState() =>
      _FoodSizeSelectionWidgetState();
}

class _FoodSizeSelectionWidgetState extends State<FoodSizeSelectionWidget> {
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final sizes = [AppStrings.size10, AppStrings.size14, AppStrings.size16];
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        Text(
          AppStrings.size.toUpperCase(),
          style: AppTextStyle.regular14(
            context,
          ).copyWith(color: AppColors.subTextColor),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: sizes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _activeIndex = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
                    child: FoodSizeSelectionItem(
                      size: sizes[index],
                      isActive: _activeIndex == index,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
