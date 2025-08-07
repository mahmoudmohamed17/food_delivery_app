import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonColor = Colors.white,
    this.textStyle,
    this.borderColor,
  });
  final String text;
  final TextStyle? textStyle;
  final Color buttonColor;
  final Color? borderColor;
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
          side: BorderSide(color: borderColor ?? buttonColor, width: 1.5),
        ),
        padding: const EdgeInsets.all(16),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
