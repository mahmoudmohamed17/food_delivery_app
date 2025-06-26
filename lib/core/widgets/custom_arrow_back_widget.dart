import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';

class CustomArrowBackWidget extends StatelessWidget {
  const CustomArrowBackWidget({super.key, this.backgrnColor});
  final Color? backgrnColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgrnColor ?? Colors.white,
      radius: 24,
      child: RotatedBox(
        quarterTurns: 1,
        child: SvgPicture.asset(AppAssets.imagesArrow),
      ),
    );
  }
}
