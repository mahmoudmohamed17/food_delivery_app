import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model});
  final DrawerItemModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(model.icon, color: AppColors.primaryColor),
      title: Text(model.title, style: AppTextStyle.bold14(context)),
      onTap: model.onTap,
    );
  }
}
