import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/features/profile/data/models/settings_item_model.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/custom_settings_container.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_item.dart';

class SettingsLastBlock extends StatelessWidget {
  const SettingsLastBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSettingsContainer(
      children: [
        SettingsItem(
          model: SettingsItemModel(
            label: AppStrings.logOut,
            icon: FontAwesomeIcons.arrowRightFromBracket,
            iconColor: const Color(0xffFB4C5B),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
