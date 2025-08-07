import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/widgets/custom_app_bar_view.dart';
import 'package:food_delivery_app/core/widgets/custom_icon_button.dart';

class MyOrdersAppBarView extends StatelessWidget {
  const MyOrdersAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBarView(
      title: AppStrings.myOrders,
      trailing: CustomIconButton(
        onTap: () {},
        icon: FontAwesomeIcons.ellipsis,
        backgrnColor: AppColors.iconBackgrnColor,
      ),
    );
  }
}
