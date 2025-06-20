import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/features/auth/data/models/social_auth_model.dart';

class SocialAuthItem extends StatelessWidget {
  const SocialAuthItem({super.key, required this.model});
  final SocialAuthModel model;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: model.onPresed,
      child: CircleAvatar(
        backgroundColor: model.color,
        radius: 25,
        child: SvgPicture.asset(model.icon),
      ),
    );
  }
}
