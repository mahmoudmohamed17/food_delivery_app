import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/trailing_home_app_bar_widget.dart';

class HomeViewAppBar extends StatefulWidget {
  const HomeViewAppBar({super.key});

  @override
  State<HomeViewAppBar> createState() => _HomeViewAppBarState();
}

class _HomeViewAppBarState extends State<HomeViewAppBar> {
  bool _isTapped = false;
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
      trailing: const SizedBox(width: 50, child: TrailingHomeAppBarWidget()),
    );
  }
}
