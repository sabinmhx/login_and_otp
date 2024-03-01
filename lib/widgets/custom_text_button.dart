import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';

/// Custom Text Button
class CustomTextButton extends StatelessWidget {
  final String textButtonText;
  final VoidCallback onPressed;

  const CustomTextButton(
      {super.key, required this.onPressed, required this.textButtonText});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: AppStyles.textButtonBorderStyle,
      onPressed: onPressed,
      child: Text(
        textButtonText,
        style: AppStyles.textButtonTextStyle,
      ),
    );
  }
}
