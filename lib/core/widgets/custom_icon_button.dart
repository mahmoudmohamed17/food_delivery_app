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
    this.backgrnRadius = 24,
  });
  final IconData? icon;
  final String? svgPicture;
  final VoidCallback onTap;
  final Color backgrnColor;
  final Color iconColor;
  final double iconSize;
  final double backgrnRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: CircleAvatar(
        backgroundColor: backgrnColor,
        radius: backgrnRadius,
        child: svgPicture == null
            ? Icon(icon, color: iconColor, size: iconSize)
            : SvgPicture.asset(svgPicture!),
      ),
    );
  }
}
