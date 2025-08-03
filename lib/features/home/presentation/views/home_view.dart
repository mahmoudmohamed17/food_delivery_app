import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/home_view_body.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/home_view_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: HomeViewBody(),
      ),
      drawer: HomeViewDrawer(),
    );
  }
}
