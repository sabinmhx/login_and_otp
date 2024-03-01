import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_and_otp/app_text.dart';
import 'package:login_and_otp/app_styles.dart';

/// Dialog Box widget for showing error if phone number length is insufficient.
class ErrorAlertDialogBox extends StatelessWidget {
  const ErrorAlertDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Icon(Icons.crisis_alert),
      // Use custom shape for the dialog box
      shape: AppStyles.alertDialogBoxButtonShape,
      content: const Text(
        // Display alert dialog content text
        AppTexts.alertDialogContentText,
        textAlign: TextAlign.center,
      ),
      actions: [
        // Action button to close the dialog
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              style: AppStyles.textButtonBorderStyle,
              child: const Text(
                AppTexts.alertDialogActionButtonText,
                style: AppStyles.textButtonTextStyle,
              ),
              onPressed: () {
                // Close the dialog
                Navigator.pop(context);
              },
            ),
          ],
        )
      ],
    );
  }
}
