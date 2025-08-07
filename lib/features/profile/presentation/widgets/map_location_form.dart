import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/location_input_field.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/location_label_selection_widget.dart';

class MapLocationForm extends StatelessWidget {
  const MapLocationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        LocationInputField(
          onSubmitted: (value) {},
          label: AppStrings.address,
          hintText: AppStrings.royalLnAddress,
          prefixIcon: const Icon(
            FontAwesomeIcons.locationDot,
            color: AppColors.subTextColor,
            size: 20,
          ),
        ),
        const SizedBox(height: 24),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: LocationInputField(
                onSubmitted: (value) {},
                label: AppStrings.street,
                hintText: AppStrings.hasonNagar,
              ),
            ),
            Expanded(
              child: LocationInputField(
                onSubmitted: (value) {},
                label: AppStrings.postCode,
                hintText: AppStrings.postCodeValue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        LocationInputField(
          onSubmitted: (value) {},
          label: AppStrings.appartment,
          hintText: AppStrings.appartmentValue,
        ),
        const SizedBox(height: 24),
        const LocationLabelSelectionWidget(),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () {},
            text: AppStrings.saveLocation,
            buttonColor: AppColors.primaryColor,
            textStyle: AppTextStyle.bold14(
              context,
            ).copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
