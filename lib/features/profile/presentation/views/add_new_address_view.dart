import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/map_location_input_fields.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_map_location_widget.dart';

class AddNewAddressView extends StatelessWidget {
  const AddNewAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: context.height * 0.40,
            child: const UserMapLocationWidget(),
          ),
          const SizedBox(height: 32),
          const Expanded(child: MapLocationInputFields()),
        ],
      ),
    );
  }
}
