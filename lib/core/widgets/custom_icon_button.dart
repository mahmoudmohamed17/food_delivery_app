import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onTap,
    this.icon,
    this.svgPicture,
    this.backgrnColor = Colors.white,
    this.iconColor = Colors.black,
    this.iconSize = 24,
  });
  final IconData? icon;
  final String? svgPicture;
  final VoidCallback onTap;
  final Color backgrnColor;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.all(Radius.circular(24)),
      child: CircleAvatar(
        backgroundColor: backgrnColor,
        radius: 24,
        child: svgPicture == null
            ? Icon(icon, color: iconColor, size: iconSize)
            : SvgPicture.asset(svgPicture!),
      ),
    );
  }
}
