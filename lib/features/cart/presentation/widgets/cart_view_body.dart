import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/cart_view_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        CartViewAppBar(),
        SizedBox(height: 24),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => const CartItem(),
            separatorBuilder: (context, index) => const SizedBox(height: 32),
            itemCount: 2,
          ),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
