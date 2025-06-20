import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBackgrdColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            Assets.imagesEllipseUpForAuth,
            colorFilter: ColorFilter.mode(Color(0xff2C313C), BlendMode.srcIn),
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              Assets.imagesVector,
              colorFilter: ColorFilter.mode(Color(0xff2C313C), BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
