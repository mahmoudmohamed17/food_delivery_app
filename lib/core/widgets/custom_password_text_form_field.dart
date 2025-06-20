import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/build_border.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key,
    required this.hintText,
    this.textInputType = TextInputType.text,
    required this.controller,
  });
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool _isPasswordSeen = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.regular14,
      controller: widget.controller,
      obscureText: !_isPasswordSeen,
      obscuringCharacter: '*',
      validator: (value) {
        if (value!.isEmpty) {
          return '${widget.hintText} is required';
        } else {
          return null;
        }
      },
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyle.regular14.copyWith(
          color: AppColors.subTextColor,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordSeen = !_isPasswordSeen;
            });
          },
          icon: Icon(
            _isPasswordSeen ? Icons.visibility : Icons.visibility_off,
            color: AppColors.subTextColor,
          ),
        ),
        fillColor: AppColors.backgrdContainerColor,
        contentPadding: EdgeInsets.all(24),
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
