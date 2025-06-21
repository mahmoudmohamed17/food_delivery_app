import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';

class CustomArrowBackWidget extends StatelessWidget {
  const CustomArrowBackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 24,
      child: RotatedBox(
        quarterTurns: 1,
        child: SvgPicture.asset(Assets.imagesArrow),
      ),
    );
  }
}
