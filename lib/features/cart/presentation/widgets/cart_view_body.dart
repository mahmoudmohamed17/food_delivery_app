import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/cart/data/utils/show_place_order_bottom_sheet.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/cart_items_list.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/cart_view_app_bar.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showPlaceOrderBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPlaceOrderBottomSheet(context),
      behavior: HitTestBehavior.opaque,
      child: const Column(
        children: [
          SizedBox(height: 16),
          CartViewAppBar(),
          SizedBox(height: 24),
          Expanded(child: CartItemsList()),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
