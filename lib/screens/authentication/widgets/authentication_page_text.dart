import 'package:flutter/material.dart';
import 'package:login_and_otp/app_text.dart';
import 'package:login_and_otp/app_styles.dart';

/// Widget for displaying text on the authentication page.
class AuthenticationPageText extends StatelessWidget {
  const AuthenticationPageText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Header text widget.
        Text(
          AppTexts.authenticationPageHeaderText,
          style: AppStyles.authenticationPageHeaderTextStyle,
        ),
        SizedBox(height: 20.0),
        // Description text widget.
        Text(
          AppTexts.authenticationPageDescriptionText,
          style: AppStyles.authenticationPageDescriptionTextStyle,
        ),
      ],
    );
  }
}
