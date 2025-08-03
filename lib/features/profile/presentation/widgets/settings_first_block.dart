import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/features/profile/data/models/settings_item_model.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/custom_settings_container.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_item.dart';
import 'package:go_router/go_router.dart';

class SettingsFirstBlock extends StatelessWidget {
  const SettingsFirstBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      SettingsItemModel(
        label: AppStrings.personalInfo,
        icon: FontAwesomeIcons.user,
        iconColor: AppColors.primaryColor,
        onTap: () {
          context.push(Routes.personalInfoView);
        },
      ),
      SettingsItemModel(
        label: AppStrings.addressProfile,
        icon: FontAwesomeIcons.map,
        iconColor: const Color(0xff504CFB),
        onTap: () {},
      ),
    ];

    return CustomSettingsContainer(
      children: items.map((item) => SettingsItem(model: item)).toList(),
    );
  }
}
