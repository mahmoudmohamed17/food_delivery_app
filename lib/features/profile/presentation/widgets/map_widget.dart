
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: AppColors.extraLightPrimaryColor,
          height: context.height * 0.40,
          width: double.infinity,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomIconButton(
                onTap: () {
                  context.pop();
                },
                icon: FontAwesomeIcons.chevronLeft,
                iconColor: Colors.white,
                iconSize: 20,
                backgrnColor: AppColors.authBackgrdColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
