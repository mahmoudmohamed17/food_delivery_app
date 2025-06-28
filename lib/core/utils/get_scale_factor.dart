import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';

double getScaleFactor(BuildContext context) {
  double width = context.width;
  // For tablet
  if (width < 800) {
    return width / 550;
  }
  // For desktop
  else if (width < 1200) {
    return width / 1000;
  }
  // Incase more than desktop
  else {
    return width / 1920;
  }
}
