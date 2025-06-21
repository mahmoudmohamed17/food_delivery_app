import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:go_router/go_router.dart';

class AuthTemplateWidget extends StatelessWidget {
  const AuthTemplateWidget({
    super.key,
    this.backArrow,
    required this.body,
    required this.title,
  });
  final Widget? backArrow;
  final Widget body;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Positioned(
          left: 24,
          top: 60,
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: backArrow ?? SizedBox.shrink(),
          ),
        ),
        Positioned(top: 100, right: 0, left: 0, child: title),
        Positioned(
          top: 230,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            padding: EdgeInsets.all(24),
            child: body,
          ),
        ),
      ],
    );
  }
}
