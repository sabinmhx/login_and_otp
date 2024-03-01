import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_and_otp/app_styles.dart';

/// Custom Text Field widget with custom border styling.
class CustomTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String? labelText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'The field cannot be empty.';
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            focusedBorder: AppStyles.focusedOutlineInputStyle,
            border: AppStyles.defaultOutlineInputBorderStyle,
            labelText: labelText,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
        ),
      ],
    );
  }
}
