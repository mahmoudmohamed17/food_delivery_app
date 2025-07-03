import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

class FoodDetailsViewHeader extends StatefulWidget {
  const FoodDetailsViewHeader({super.key});

  @override
  State<FoodDetailsViewHeader> createState() => _FoodDetailsViewHeaderState();
}

class _FoodDetailsViewHeaderState extends State<FoodDetailsViewHeader> {
  bool _isAddedToFav = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.42,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            child: ColoredBox(
              color: AppColors.extraLightPrimaryColor,
              child: Align(
                child: Image.asset(AppAssets.imagesBurger, fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    icon: FontAwesomeIcons.chevronLeft,
                    iconSize: 20,
                    onTap: () {
                      context.pop();
                    },
                  ),
                  CustomIconButton(
                    icon: FontAwesomeIcons.solidHeart,
                    iconSize: 20,
                    iconColor: _isAddedToFav
                        ? AppColors.primaryColor
                        : Colors.grey[300]!,
                    onTap: () {
                      setState(() {
                        _isAddedToFav = !_isAddedToFav;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
