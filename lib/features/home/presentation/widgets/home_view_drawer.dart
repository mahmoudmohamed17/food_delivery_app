import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/data/models/drawer_item_model.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/drawer_item.dart';
import 'package:go_router/go_router.dart';

class HomeViewDrawer extends StatelessWidget {
  const HomeViewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerItems = [
      DrawerItemModel(
        title: AppStrings.myProfile,
        icon: FontAwesomeIcons.solidCircleUser,
        onTap: () {
          context.push(Routes.profileView);
        },
      ),
      DrawerItemModel(
        title: AppStrings.myOrders,
        icon: FontAwesomeIcons.burger,
        onTap: () {
          context.push(Routes.myOrdersView);
        },
      ),
      DrawerItemModel(
        title: AppStrings.coupons,
        icon: FontAwesomeIcons.receipt,
        onTap: () {},
      ),
      DrawerItemModel(
        title: AppStrings.temrsAndPolicies,
        icon: FontAwesomeIcons.solidFile,
        onTap: () {},
      ),
      DrawerItemModel(
        title: AppStrings.contactUs,
        icon: FontAwesomeIcons.phone,
        onTap: () {},
      ),
      DrawerItemModel(
        title: AppStrings.logOut,
        icon: FontAwesomeIcons.rightFromBracket,
        onTap: () {},
      ),
    ];
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Mahmoud Mohamed',
              style: AppTextStyle.regular16(context),
            ),
            accountEmail: Text(
              'mahmoud@example.com',
              style: AppTextStyle.regular14(context),
            ),
            currentAccountPicture: const Image(
              image: AssetImage(AppAssets.imagesDummyUserPic),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primaryColor, Colors.grey.shade500],
              ),
            ),
          ),
          Column(
            children: List.generate(drawerItems.length, (index) {
              return DrawerItem(model: drawerItems[index]);
            }),
          ),
        ],
      ),
    );
  }
}
