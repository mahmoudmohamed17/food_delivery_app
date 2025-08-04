import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_first_block.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_last_block.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_second_block.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_third_block.dart';

class UserSettingsWidget extends StatelessWidget {
  const UserSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        SettingsFirstBlock(),
        SettingsSecondBlock(),
        SettingsThirdBlock(),
        SettingsLastBlock(),
      ],
    );
  }
}
