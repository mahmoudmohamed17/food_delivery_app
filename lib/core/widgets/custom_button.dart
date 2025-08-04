import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonColor = Colors.white,
    this.textStyle,
  });
  final String text;
  final TextStyle? textStyle;
  final Color buttonColor;
  final void Function()? onPressed;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        padding: const EdgeInsets.all(16),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
