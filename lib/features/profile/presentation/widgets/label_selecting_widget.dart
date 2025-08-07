import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/features/profile/data/models/location_label_model.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/location_label_item.dart';

class LabelSelectingWidget extends StatefulWidget {
  const LabelSelectingWidget({super.key, this.onTap});
  final void Function(LocationLabelModel?)? onTap;

  @override
  State<LabelSelectingWidget> createState() => _LabelSelectingWidgetState();
}

class _LabelSelectingWidgetState extends State<LabelSelectingWidget> {
  int _activeIndex = 0;

  final _labels = [
    LocationLabelModel(label: AppStrings.home, icon: FontAwesomeIcons.house),
    LocationLabelModel(label: AppStrings.work, icon: FontAwesomeIcons.suitcase),
    LocationLabelModel(label: AppStrings.other, icon: FontAwesomeIcons.map),
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
          child: LocationLabelItem(
            label: _labels[index].label,
            isSelected: index == _activeIndex,
          ),
        ),
      ),
    );
  }
}
