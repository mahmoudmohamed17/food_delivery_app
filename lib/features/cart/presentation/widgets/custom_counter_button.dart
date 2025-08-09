import 'package:flutter/material.dart';

class CustomCounterButton extends StatelessWidget {
  const CustomCounterButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor = Colors.black,
    this.btnColor = Colors.white,
    this.iconSize = 24,
  });
  final VoidCallback onTap;
  final IconData icon;
  final Color iconColor;
  final Color btnColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      visualDensity: VisualDensity.compact,
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(btnColor)),
      icon: Icon(icon, color: iconColor, size: iconSize),
    );
  }
}
