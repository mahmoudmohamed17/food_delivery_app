import 'dart:ui';

class SocialAuthModel {
  final String icon;
  final Color color;
  final VoidCallback onPresed;

  SocialAuthModel({
    required this.icon,
    required this.color,
    required this.onPresed,
  });
}
