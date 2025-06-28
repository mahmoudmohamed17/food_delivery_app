import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';

class TrailingHomeAppBarWidget extends StatelessWidget {
  const TrailingHomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomIconButton(
          icon: FontAwesomeIcons.bagShopping,
          backgrnColor: AppColors.authBackgrdColor,
          iconColor: Colors.white,
          iconSize: 20,
          onTap: () {},
        ),
        Positioned(
          top: -14,
          right: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '2',
                style: AppTextStyle.bold16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
