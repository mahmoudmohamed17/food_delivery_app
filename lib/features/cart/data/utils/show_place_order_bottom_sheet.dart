import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/cart/presentation/widgets/place_order_bottom_sheet_body.dart';

void showPlaceOrderBottomSheet(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierColor: Colors.transparent,
    barrierLabel: 'Dismiss',
    barrierDismissible: true,
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          ).animate(CurvedAnimation(parent: anim1, curve: Curves.easeOutCubic)),
          child: const Material(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            elevation: 20,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: SizedBox(
                width: double.infinity,
                child: PlaceOrderBottomSheetBody(),
              ),
            ),
          ),
        ),
      );
    },
  );
}
