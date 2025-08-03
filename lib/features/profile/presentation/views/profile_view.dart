import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/profile_view_app_bar.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_first_block.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_last_block.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_second_block.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/settings_third_block.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_profile_badge.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: ProfileViewAppBar()),
              SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverToBoxAdapter(child: UserProfileBadge()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: SettingsFirstBlock()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: SettingsSecondBlock()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: SettingsThirdBlock()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: SettingsLastBlock()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
