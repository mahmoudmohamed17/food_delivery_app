import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/widgets/custom_app_bar_view.dart';
import 'package:food_delivery_app/features/payment/presentation/widgets/payment_gateways_list.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        CustomAppBarView(title: AppStrings.payment),
        SizedBox(height: 32),
        PaymentGatewaysList(),
      ],
    );
  }
}
