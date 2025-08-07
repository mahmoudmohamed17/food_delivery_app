import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/orders/presentation/widgets/history_order_item.dart';

class HistoryOrdersList extends StatelessWidget {
  const HistoryOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => const SizedBox(height: 32),
      itemBuilder: (context, index) {
        return const HistoryOrderItem();
      },
    );
  }
}
