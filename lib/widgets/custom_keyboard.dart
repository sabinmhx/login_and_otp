import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';

/// Custom keyboard widget for OTP input.
class CustomKeyboard extends StatelessWidget {
  final List<TextEditingController> otpController;
  final Function(String) onKeyPress;

  const CustomKeyboard({
    super.key,
    required this.otpController,
    required this.onKeyPress,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.only(top: 15.0),
      color: primaryColor,
      child: Column(
        children: [
          // First row of keys; 1, 2 and 3.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardKey(value: '1'),
              _buildKeyboardKey(value: '2'),
              _buildKeyboardKey(value: '3'),
            ],
          ),
          // Second Row of keys; 4, 5 and 6.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardKey(value: '4'),
              _buildKeyboardKey(value: '5'),
              _buildKeyboardKey(value: '6'),
            ],
          ),
          // Third Row of keys; 7, 8 and 9.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardKey(value: '7'),
              _buildKeyboardKey(value: '8'),
              _buildKeyboardKey(value: '9'),
            ],
          ),
          // Fourth Row of keys; blank, 0 and backspace.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardKey(value: ''),
              _buildKeyboardKey(value: '0'),
              _buildKeyboardKey(value: 'back', isBackspace: true),
            ],
          ),
        ],
      ),
    );
  }

  // Builds the keyboard keys.
  Widget _buildKeyboardKey({required String value, bool isBackspace = false}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onKeyPress(value);
        },
        child: Container(
          height: keyboardKeysContainerHeight,
          alignment: Alignment.center,
          child: isBackspace
              ? const Icon(Icons.backspace)
              : Text(
                  value,
                  style: AppStyles.customKeyboardKeysStyle,
                ),
        ),
      ),
    );
  }
}
