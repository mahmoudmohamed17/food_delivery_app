import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/custom_counter_button.dart';

class CartItemCounter extends StatefulWidget {
  const CartItemCounter({super.key});

  @override
  State<CartItemCounter> createState() => _CartItemCounterState();
}

class _CartItemCounterState extends State<CartItemCounter> {
  int _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomCounterButton(
          onTap: () {
            setState(() {
              if (_itemCount > 1) _itemCount--;
            });
          },
          icon: FontAwesomeIcons.minus,
          iconColor: Colors.white,
          btnColor: AppColors.darkModeColor,
          iconSize: 16,
        ),
        SizedBox(
          width: 30,
          child: Text(
            _itemCount.toString(),
            textAlign: TextAlign.center,
            style: AppTextStyle.bold16(context).copyWith(color: Colors.white),
          ),
        ),
        CustomCounterButton(
          onTap: () {
            setState(() {
              _itemCount++;
            });
          },
          icon: FontAwesomeIcons.plus,
          iconColor: Colors.white,
          btnColor: AppColors.darkModeColor,
          iconSize: 16,
        ),
      ],
    );
  }
}
