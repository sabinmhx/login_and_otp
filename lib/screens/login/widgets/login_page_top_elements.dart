import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';
import 'package:login_and_otp/widgets/custom_curve.dart';
import 'package:login_and_otp/widgets/custom_navigation_button.dart';

class LoginPageTopElements extends StatelessWidget {
  const LoginPageTopElements({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        // Custom curve at top right made with custom painter.
        CustomCurve(),
        Padding(
          padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 10.0),
          child: Row(
            children: [
              // Custom back button in the left of login page.
              CustomNavigationButton(icon: AppStyles.backIcon),
              Spacer(),
              // Help centre button at the top right of login page.
              CustomNavigationButton(icon: AppStyles.helpCentreIcon),
            ],
          ),
        ),
      ],
    );
  }
}
