import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';

/// Displays an OTP (One Time Password) field.
class OTPFieldPage extends StatelessWidget {
  final int totalDigits;
  final List<TextEditingController> otpController;

  const OTPFieldPage({
    super.key,
    required this.totalDigits,
    required this.otpController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        totalDigits,
        (index) => GestureDetector(
          child: IgnorePointer(
            // Disable pointer events.
            ignoring: true,
            child: Container(
              decoration: AppStyles.oTPFieldContainerBoxDecoration,
              width: 47,
              child: TextField(
                controller: otpController[index],
                keyboardType: TextInputType.none,
                textAlign: TextAlign.center,
                decoration: AppStyles.oTPFieldInputDecoration,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
