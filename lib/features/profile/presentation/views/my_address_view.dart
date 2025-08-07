import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_app_bar_view.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_address_widget.dart';
import 'package:go_router/go_router.dart';

class MyAddressView extends StatelessWidget {
  const MyAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const CustomAppBarView(title: AppStrings.myAddress),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.separated(
                  itemCount: 2,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) => const UserAddressWidget(
                    label: AppStrings.home,
                    address: AppStrings.homeAddress,
                    labelIcon: FontAwesomeIcons.suitcase,
                    iconColor: Color(0xff2790C3),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    context.push(Routes.addNewAddressView);
                  },
                  text: AppStrings.addNewAddress,
                  textStyle: AppTextStyle.bold14(
                    context,
                  ).copyWith(color: Colors.white),
                  buttonColor: AppColors.primaryColor,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
