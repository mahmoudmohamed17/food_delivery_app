import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/auth/presentation/widgets/access_location_button.dart';

class LocationAccessView extends StatelessWidget {
  const LocationAccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.extraLightPrimaryColor,
                radius: 150,
                child: SvgPicture.asset(AppAssets.imagesLocationAccess),
              ),
              const SizedBox(height: 64),
              const SizedBox(
                width: double.infinity,
                child: AccessLocationButton(),
              ),
              const SizedBox(height: 24),
              Text(
                AppStrings.accessLocationHint,
                textAlign: TextAlign.center,
                style: AppTextStyle.regular16(
                  context,
                ).copyWith(color: AppColors.subTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
