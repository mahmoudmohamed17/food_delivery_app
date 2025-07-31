import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/features/profile/data/models/settings_item_model.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/custom_settings_container.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_item.dart';

class SettingsThirdBlock extends StatelessWidget {
  const SettingsThirdBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      SettingsItemModel(
        label: AppStrings.faqs,
        icon: FontAwesomeIcons.circleQuestion,
        iconColor: AppColors.primaryColor,
        onTap: () {},
      ),
      SettingsItemModel(
        label: AppStrings.userReviews,
        icon: FontAwesomeIcons.shareNodes,
        iconColor: const Color(0xff45E5E5),
        onTap: () {},
      ),
      SettingsItemModel(
        label: AppStrings.settings,
        icon: FontAwesomeIcons.gear,
        iconColor: const Color(0xff5C58FB),
        onTap: () {},
      ),
    ];
    return CustomSettingsContainer(
      children: items.map((item) => SettingsItem(model: item)).toList(),
    );
  }
}
