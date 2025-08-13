import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding = 16,
  });
  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
