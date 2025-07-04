import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/category_details_view_body.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: CategoryDetailsViewBody(),
      ),
    );
  }
}
