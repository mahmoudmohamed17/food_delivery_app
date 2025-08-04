import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/profile_view_app_bar.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_profile_badge.dart';
import 'package:food_delivery_app/features/profile/presentation/widgets/user_settings_widget.dart';

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
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(child: UserSettingsWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
