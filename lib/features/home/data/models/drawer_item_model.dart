import 'package:flutter/widgets.dart';

class DrawerItemModel {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  DrawerItemModel({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
