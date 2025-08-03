import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/profile/data/models/settings_item_model.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({super.key, required this.model});

  final SettingsItemModel model;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: model.onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  child: Icon(model.icon, color: model.iconColor, size: 18),
                ),
                Text(model.label, style: AppTextStyle.medium16(context)),
              ],
            ),
            const Icon(FontAwesomeIcons.chevronRight, size: 18),
          ],
        ),
      ),
    );
  }
}
