import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';

/// Custom Elevated Button along with user input validation.
class CustomElevatedButton extends StatelessWidget {
  /// User Input from text form field.
  final String userInputToValidate;

  /// From Key of text form field
  final GlobalKey<FormState> formKey;

  /// Perform action on button press.
  final VoidCallback onButtonPressed;

  /// Text for elevated button.
  final String elevatedButtonText;

  const CustomElevatedButton({
    super.key,
    required this.userInputToValidate,
    required this.formKey,
    required this.onButtonPressed,
    required this.elevatedButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // Validate user input before performing the action.
      onPressed: onButtonPressed,
      style: AppStyles.elevatedButtonStyle,
      child: Text(
        elevatedButtonText,
        style: AppStyles.elevatedButtonTextStyle,
      ),
    );
  }
}

/// Function to validate the length of user input.
bool validateUserInputLength(String userInputToValidate) {
  if (userInputToValidate.length < 10) {
    return true;
  }
  return false;
}
