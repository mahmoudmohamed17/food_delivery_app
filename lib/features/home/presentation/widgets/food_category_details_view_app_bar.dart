import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_arrow_back_widget.dart';
import 'package:go_router/go_router.dart';

class FoodCategoryDetailsViewAppBar extends StatefulWidget {
  const FoodCategoryDetailsViewAppBar({super.key});

  @override
  State<FoodCategoryDetailsViewAppBar> createState() =>
      _FoodCategoryDetailsViewAppBarState();
}

class _FoodCategoryDetailsViewAppBarState
    extends State<FoodCategoryDetailsViewAppBar> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            context.pop();
          },
          child: CustomArrowBackWidget(
            backgrnColor: AppColors.iconBackgrnColor,
          ),
        ),
        SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.iconColor, width: 1.5),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            spacing: 2,
            children: [
              Text(
                AppStrings.burger.toUpperCase(),
                style: AppTextStyle.bold12.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _isTapped = !_isTapped;
                  });
                },
                visualDensity: VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                padding: EdgeInsets.zero,
                icon: RotatedBox(
                  quarterTurns: _isTapped ? 2 : 0,
                  child: SvgPicture.asset(
                    Assets.imagesArrowDown,
                    height: 16,
                    width: 16,
                    colorFilter: ColorFilter.mode(
                      AppColors.primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.all(Radius.circular(24)),
          child: CircleAvatar(
            backgroundColor: AppColors.authBackgrdColor,
            radius: 24,
            child: SvgPicture.asset(
              Assets.imagesSearch,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ),
        SizedBox(width: 16),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.all(Radius.circular(24)),
          child: CircleAvatar(
            backgroundColor: AppColors.iconBackgrnColor,
            radius: 24,
            child: SvgPicture.asset(Assets.imagesFilter),
          ),
        ),
      ],
    );
  }
}
