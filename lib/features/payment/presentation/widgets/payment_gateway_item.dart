import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class PaymentGatewayItem extends StatelessWidget {
  const PaymentGatewayItem({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: isActive
                    ? Colors.white
                    : AppColors.backgrdContainerColor,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                border: BoxBorder.all(
                  color: isActive ? AppColors.primaryColor : Colors.transparent,
                  width: 3.5,
                ),
              ),
              padding: const EdgeInsets.all(24),
              child: SvgPicture.asset(AppAssets.imagesVisa),
            ),
            Positioned(
              top: -8,
              right: -2,
              child: AnimatedOpacity(
                opacity: isActive ? 1.0 : 0.0,
                curve: Curves.ease,
                duration: const Duration(milliseconds: 200),
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      FontAwesomeIcons.check,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Text('Visa', style: AppTextStyle.regular14(context)),
      ],
    );
  }
}
