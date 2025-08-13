import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';

class DashboardViewAppBar extends StatefulWidget {
  const DashboardViewAppBar({super.key});

  @override
  State<DashboardViewAppBar> createState() => _DashboardViewAppBarState();
}

class _DashboardViewAppBarState extends State<DashboardViewAppBar> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CustomIconButton(onTap: () {}, svgPicture: AppAssets.imagesMenu),
      title: Text(
        AppStrings.location,
        style: AppTextStyle.bold12(
          context,
        ).copyWith(color: AppColors.primaryColor),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Text(
            AppStrings.halalLabOffice,
            style: AppTextStyle.regular14(
              context,
            ).copyWith(color: AppColors.subTextColor),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isTapped = !_isTapped;
              });
            },
            child: Icon(
              _isTapped ? FontAwesomeIcons.caretUp : FontAwesomeIcons.caretDown,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
      trailing: const CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
