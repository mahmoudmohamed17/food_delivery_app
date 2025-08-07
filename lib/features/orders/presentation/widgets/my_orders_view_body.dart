import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/orders/presentation/widgets/history_orders_list.dart';
import 'package:food_delivery_app/features/orders/presentation/widgets/my_orders_app_bar_view.dart';
import 'package:food_delivery_app/features/orders/presentation/widgets/ongoing_orders_list.dart';

class MyOrdersViewBody extends StatefulWidget {
  const MyOrdersViewBody({super.key});

  @override
  State<MyOrdersViewBody> createState() => _MyOrdersViewBodyState();
}

class _MyOrdersViewBodyState extends State<MyOrdersViewBody>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController();
    _pageController.addListener(() {
      _tabController.animateTo(_pageController.page!.round());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const MyOrdersAppBarView(),
        const SizedBox(height: 24),
        TabBar(
          controller: _tabController,
          onTap: (value) {
            _pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          tabs: const [
            Tab(text: AppStrings.ongoing),
            Tab(text: AppStrings.history),
          ],
          labelStyle: AppTextStyle.bold16(context),
          labelColor: AppColors.primaryColor,
          unselectedLabelStyle: AppTextStyle.regular16(context),
          unselectedLabelColor: Colors.grey.shade500,
          indicatorColor: AppColors.primaryColor,
          dividerColor: Colors.grey.shade500,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        const SizedBox(height: 32),
        Expanded(
          child: PageView(
            controller: _pageController,
            children: const [OngoingOrdersList(), HistoryOrdersList()],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
