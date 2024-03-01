import 'package:flutter/material.dart';
import 'package:login_and_otp/app_text.dart';
import 'package:login_and_otp/app_styles.dart';

/// Text for Login Page.
class LoginPageText extends StatelessWidget {
  const LoginPageText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.loginPageHeaderText,
          style: AppStyles.loginPageHeaderTextStyle,
        ),
        SizedBox(height: 15),
        Text(
          AppTexts.loginPageDescriptionText,
          style: AppStyles.loginPageDescriptionTextStyle,
        ),
      ],
    );
  }
}
