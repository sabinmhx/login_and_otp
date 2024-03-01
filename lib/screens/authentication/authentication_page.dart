import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';
import 'package:login_and_otp/screens/authentication/widgets/resend_code_timer.dart';
import 'package:login_and_otp/widgets/custom_navigation_button.dart';
import 'package:login_and_otp/widgets/custom_keyboard.dart';
import 'package:login_and_otp/screens/authentication/widgets/authentication_page_text.dart';
import 'package:login_and_otp/screens/authentication/widgets/otp_field.dart';

/// Authentication Page with to authenticate with OTP.
class AuthenticationPage extends StatefulWidget {
  /// Result of phone number controller to be displayed in authentication page.
  final String phoneNumber;

  const AuthenticationPage({super.key, required this.phoneNumber});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  /// Total number of OTP digits.
  final int _totalDigits = 6;

  /// List of controllers for entering OTP.
  late List<TextEditingController> _otpController;

  /// Phone number to be displayed in authentication page.
  late String _number;

  @override
  void initState() {
    super.initState();
    _otpController = List.generate(
      _totalDigits,
      (index) => TextEditingController(),
    );
    _number = widget.phoneNumber;
  }

  @override
  void dispose() {
    for (var controller in _otpController) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomNavigationButton(
          icon: AppStyles.backIcon,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(12.0, 50.0, 12.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AuthenticationPageText(),
                  const SizedBox(height: 20.0),
                  Text(
                    _number,
                    style: AppStyles.phoneNumberTextStyle,
                  ),
                  const SizedBox(height: 20.0),
                  OTPFieldPage(
                    totalDigits: _totalDigits,
                    otpController: _otpController,
                  ),
                  const SizedBox(height: 20),
                  const ResendCodeTimer(),
                ],
              ),
            ),
          ),
          CustomKeyboard(
            otpController: _otpController,
            onKeyPress: _onKeyPress,
          ),
        ],
      ),
    );
  }

  /// Logic for keypress in custom keyboard.
  void _onKeyPress(String value) {
    if (value == 'back') {
      for (var i = _totalDigits - 1; i >= 0; i--) {
        if (_otpController[i].text.isNotEmpty) {
          _otpController[i].clear();
          break;
        }
      }
    } else {
      for (var i = 0; i < _totalDigits; i++) {
        if (_otpController[i].text.isEmpty) {
          _otpController[i].text = value;
          break;
        }
      }
    }
  }
}
