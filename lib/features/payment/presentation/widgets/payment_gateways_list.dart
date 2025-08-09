import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/payment/presentation/widgets/payment_gateway_item.dart';

class PaymentGatewaysList extends StatefulWidget {
  const PaymentGatewaysList({super.key});

  @override
  State<PaymentGatewaysList> createState() => _PaymentGatewaysListState();
}

class _PaymentGatewaysListState extends State<PaymentGatewaysList> {
  int _activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _activeIndex = index;
                  });
                },
                child: PaymentGatewayItem(isActive: _activeIndex == index),
              ),
            );
          }),
        ),
      ),
    );
  }
}
