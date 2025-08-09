import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/features/profile/data/models/settings_item_model.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/custom_settings_container.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_item.dart';
import 'package:go_router/go_router.dart';

class SettingsSecondBlock extends StatelessWidget {
  const SettingsSecondBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      SettingsItemModel(
        label: AppStrings.cart,
        icon: FontAwesomeIcons.bagShopping,
        iconColor: const Color(0xff51A9FF),
        onTap: () {
          context.push(Routes.cartView);
        },
      ),
      SettingsItemModel(
        label: AppStrings.favourites,
        icon: FontAwesomeIcons.heart,
        iconColor: const Color(0xffB541FB),
        onTap: () {},
      ),
      SettingsItemModel(
        label: AppStrings.notifications,
        icon: FontAwesomeIcons.bell,
        iconColor: const Color(0xffFFB74C),
        onTap: () {},
      ),
      SettingsItemModel(
        label: AppStrings.paymentMethod,
        icon: FontAwesomeIcons.creditCard,
        iconColor: const Color(0xff51A9FF),
        onTap: () {},
      ),
    ];
    return CustomSettingsContainer(
      children: items.map((item) => SettingsItem(model: item)).toList(),
    );
  }
}
