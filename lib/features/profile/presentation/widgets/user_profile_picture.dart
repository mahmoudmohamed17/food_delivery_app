import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';

class UserProfilePicture extends StatelessWidget {
  const UserProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          child: CircleAvatar(
            radius: 75,
            backgroundColor: AppColors.extraLightPrimaryColor,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 95,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                child: const Icon(
                  FontAwesomeIcons.pen,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
