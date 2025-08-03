import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/build_border.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({
    super.key,
    required this.hintText,
    required this.onTap,
  });
  final String hintText;
  final VoidCallback onTap;

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  late TextEditingController _controller;
  bool _isTyping = false;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      setState(() {
        _isTyping = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyle.regular14(context),
      controller: _controller,
      onTap: widget.onTap,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyle.regular14(
          context,
        ).copyWith(color: AppColors.subTextColor),
        prefixIcon: SvgPicture.asset(
          AppAssets.imagesSearch,
          fit: BoxFit.scaleDown,
          colorFilter: const ColorFilter.mode(
            AppColors.subTextColor,
            BlendMode.srcIn,
          ),
        ),
        suffixIcon: _isTyping
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _controller.clear();
                    _isTyping = false;
                  });
                  FocusScope.of(context).unfocus();
                },
                icon: const Icon(Icons.cancel, color: AppColors.iconColor),
              )
            : null,
        fillColor: AppColors.backgrdContainerColor,
        contentPadding: const EdgeInsets.all(24),
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
