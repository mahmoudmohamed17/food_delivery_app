import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/payment/presentation/widgets/payment_view_body.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: PaymentViewBody(),
        ),
      ),
    );
  }
}
