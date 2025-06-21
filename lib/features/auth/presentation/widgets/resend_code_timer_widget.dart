import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class ResendCodeTimerWidget extends StatefulWidget {
  const ResendCodeTimerWidget({super.key});

  @override
  State<ResendCodeTimerWidget> createState() => _ResendCodeTimerWidgetState();
}

class _ResendCodeTimerWidgetState extends State<ResendCodeTimerWidget> {
  int _seconds = 5;
  bool _isResendEnabled = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() {
      _seconds = 5;
      _isResendEnabled = false;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        timer.cancel();
        setState(() {
          _isResendEnabled = true;
        });
      } else {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  void _resendCode() {
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: _resendCode,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            AppStrings.resendCode,
            style: _isResendEnabled
                ? AppTextStyle.bold14.copyWith(
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                    color: AppColors.primaryTextColor,
                  )
                : AppTextStyle.regular14.copyWith(
                    color: AppColors.primaryTextColor,
                  ),
          ),
        ),
        Text(
          'in $_seconds seconds.',
          style: AppTextStyle.regular14.copyWith(
            color: AppColors.primaryTextColor,
          ),
        ),
      ],
    );
  }
}
