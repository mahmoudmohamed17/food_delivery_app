import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/profile/data/models/personal_info_model.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/custom_settings_container.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/personal_view_app_bar.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_profile_badge.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      PersonalInfoModel(
        title: AppStrings.fullName,
        subTitle: AppStrings.vishalKhadok,
        icon: FontAwesomeIcons.user,
        iconColor: AppColors.primaryColor,
      ),
      PersonalInfoModel(
        title: AppStrings.email,
        subTitle: AppStrings.helloEmail,
        icon: FontAwesomeIcons.envelope,
        iconColor: const Color(0xff413DFB),
      ),
      PersonalInfoModel(
        title: AppStrings.phoneNumber,
        subTitle: AppStrings.phoneValue,
        icon: FontAwesomeIcons.phone,
        iconColor: const Color(0xff369BFF),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const PersonalViewAppBar(),
              const SizedBox(height: 24),
              const UserProfileBadge(),
              const SizedBox(height: 20),
              CustomSettingsContainer(
                children: items
                    .map(
                      (item) => Row(
                        spacing: 16,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            child: Icon(
                              item.icon,
                              color: item.iconColor,
                              size: 18,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: AppTextStyle.regular14(context),
                              ),
                              Text(
                                item.subTitle,
                                style: AppTextStyle.regular14(
                                  context,
                                ).copyWith(color: AppColors.subTextColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
