import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/dashboard/presentation/widgets/dashboard_view_app_bar.dart';
import 'package:food_delivery_app/features/dashboard/presentation/widgets/order_statistics_widget.dart';
import 'package:food_delivery_app/features/dashboard/presentation/widgets/seal_statistics_chart.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: const [
        SizedBox(height: 16),
        DashboardViewAppBar(),
        SizedBox(height: 24),
        OrderStatisticsWidget(),
        SizedBox(height: 16),
        SealStatisticsChart(),
        SizedBox(height: 16),
      ],
    );
  }
}
