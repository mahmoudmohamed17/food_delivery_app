import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SafeArea(child: Column(children: [HomeViewAppBar()])),
    );
  }
}
