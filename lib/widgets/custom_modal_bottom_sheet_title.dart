import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';

/// Custom title for the modal bottom sheet.
class CustomModalBottomSheetTitle extends StatelessWidget {
  final String bottomSheetTitleText;

  const CustomModalBottomSheetTitle(
      {super.key, required this.bottomSheetTitleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        bottomSheetTitleText,
        style: AppStyles.modalBottomSheetTitleStyle,
      ),
    );
  }
}
