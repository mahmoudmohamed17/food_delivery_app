import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/profile/data/models/label_model.dart';

class SelectingLabelWidget extends StatefulWidget {
  const SelectingLabelWidget({super.key, this.onTap});
  final void Function(LabelModel?)? onTap;

  @override
  State<SelectingLabelWidget> createState() => _SelectingLabelWidgetState();
}

class _SelectingLabelWidgetState extends State<SelectingLabelWidget> {
  int _activeIndex = 0;

  final _labels = [
    LabelModel(label: AppStrings.home, icon: FontAwesomeIcons.house),
    LabelModel(label: AppStrings.work, icon: FontAwesomeIcons.suitcase),
    LabelModel(label: AppStrings.other, icon: FontAwesomeIcons.map),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: _labels.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              _activeIndex = index;
            });
            widget.onTap?.call(_labels[index]);
          },
          child: LabelItem(
            label: _labels[index].label,
            isSelected: index == _activeIndex,
          ),
        ),
      ),
    );
  }
}

class LabelItem extends StatelessWidget {
  const LabelItem({super.key, required this.isSelected, required this.label});
  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primaryColor
            : AppColors.backgrdContainerColor,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.center,
      child: Text(
        label,
        style: AppTextStyle.regular14(context).copyWith(
          color: isSelected ? Colors.white : AppColors.primaryTextColor,
        ),
      ),
    );
  }
}
