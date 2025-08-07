import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/orders/presentation/widgets/my_orders_view_body.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: MyOrdersViewBody(),
        ),
      ),
    );
  }
}
