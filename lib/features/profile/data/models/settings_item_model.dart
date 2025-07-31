import 'package:flutter/widgets.dart';

class SettingsItemModel {
  final String label;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  SettingsItemModel({
    required this.label,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });
}
