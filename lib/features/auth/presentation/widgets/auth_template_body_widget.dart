import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:go_router/go_router.dart';

class AuthTemplateBodyWidget extends StatelessWidget {
  const AuthTemplateBodyWidget({
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
          AppAssets.imagesEllipseUpForAuth,
          colorFilter: const ColorFilter.mode(
            Color(0xff2C313C),
            BlendMode.srcIn,
          ),
          fit: BoxFit.fill,
        ),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(
            AppAssets.imagesVector,
            colorFilter: const ColorFilter.mode(
              Color(0xff2C313C),
              BlendMode.srcIn,
            ),
          ),
        ),
        Positioned(
          left: 24,
          top: context.height * 0.05,
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: backArrow ?? const SizedBox.shrink(),
          ),
        ),
        Positioned(
          top: context.height * 0.138,
          right: 0,
          left: 0,
          child: title,
        ),
        Positioned(
          top: context.height * 0.275,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            padding: const EdgeInsets.all(24),
            child: body,
          ),
        ),
      ],
    );
  }
}
