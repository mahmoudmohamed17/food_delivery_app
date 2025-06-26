import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/widgets/custom_arrow_back_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RestaurantDetailsViewHeader extends StatefulWidget {
  const RestaurantDetailsViewHeader({super.key});

  @override
  State<RestaurantDetailsViewHeader> createState() =>
      _RestaurantDetailsViewHeaderState();
}

class _RestaurantDetailsViewHeaderState
    extends State<RestaurantDetailsViewHeader> {
  int _imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CarouselSlider(
          items: List.generate(5, (index) {
            return ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Image.asset(
                AppAssets.imagesRestaurantPicture,
                fit: BoxFit.cover,
              ),
            );
          }),
          options: CarouselOptions(
            height: context.height * 0.4,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _imageIndex = index;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: CustomArrowBackWidget(),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: SvgPicture.asset(AppAssets.imagesMore),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          top: context.height * 0.35,
          child: AnimatedSmoothIndicator(
            activeIndex: _imageIndex,
            count: 5,
            effect: ScrollingDotsEffect(
              fixedCenter: true,
              dotColor: AppColors.extraLightPrimaryColor,
              activeDotColor: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
