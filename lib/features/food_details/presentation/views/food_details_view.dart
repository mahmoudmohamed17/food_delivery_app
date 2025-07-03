import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/food_details/data/utils/show_purchase_bottom_sheet.dart';
import 'package:food_delivery_app/features/food_details/presentation/widgets/food_details_view_body.dart';

class FoodDetailsView extends StatefulWidget {
  const FoodDetailsView({super.key});

  @override
  State<FoodDetailsView> createState() => _FoodDetailsViewState();
}

class _FoodDetailsViewState extends State<FoodDetailsView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      showPurchaseBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => showPurchaseBottomSheet(context),
        behavior: HitTestBehavior.opaque,
        child: const FoodDetailsViewBody(),
      ),
    );
  }
}
