import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const CartItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 32),
      itemCount: 2,
    );
  }
}
