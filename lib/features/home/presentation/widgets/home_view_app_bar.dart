import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/trailing_home_app_bar_widget.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CustomIconButton(
        icon: FontAwesomeIcons.barsStaggered,
        iconSize: 20,
        backgrnColor: AppColors.iconBackgrnColor,
        onTap: () {},
      ),
      title: Text(
        AppStrings.deliverTo,
        style: AppTextStyle.bold12(
          context,
        ).copyWith(color: AppColors.primaryColor),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          Text(
            AppStrings.halalLabOffice,
            style: AppTextStyle.regular14(
              context,
            ).copyWith(color: AppColors.subTextColor),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            onPressed: () {},
            icon: SvgPicture.asset(
              AppAssets.imagesArrowDown,
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
      trailing: SizedBox(width: 50, child: TrailingHomeAppBarWidget()),
    );
  }
}
