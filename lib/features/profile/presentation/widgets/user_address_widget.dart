import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class UserAddressWidget extends StatelessWidget {
  const UserAddressWidget({
    super.key,
    required this.label,
    required this.address,
    required this.labelIcon,
    required this.iconColor,
  });
  final String label;
  final String address;
  final IconData labelIcon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.backgrdContainerColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 16,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8),
            child: Icon(labelIcon, color: iconColor),
          ),
          Expanded(
            child: Column(
              spacing: 8,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      label,
                      style: AppTextStyle.regular14(
                        context,
                      ).copyWith(color: AppColors.primaryTextColor),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 16,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              FontAwesomeIcons.penToSquare,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              FontAwesomeIcons.trashCan,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  address,
                  style: AppTextStyle.regular14(
                    context,
                  ).copyWith(color: AppColors.subTextColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
