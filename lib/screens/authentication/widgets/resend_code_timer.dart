import 'package:login_and_otp/app_text.dart';
import 'package:login_and_otp/widgets/custom_text_button.dart';
import 'package:login_and_otp/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';

/// CountDown Timer with resend code and resend code button.
class ResendCodeTimer extends StatefulWidget {
  const ResendCodeTimer({super.key});

  @override
  State<ResendCodeTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<ResendCodeTimer> {
  @override
  void initState() {
    super.initState();
    // Countdown starts.
    CountDownTimer.startResendTimer(_updateTimerUI);
  }

  void _updateTimerUI() {
    // Reflect the timer countdown in ui.
    setState(() {});
  }

  @override
  void dispose() {
    // Cancel the timer, otherwise it will still run when navigating through pages
    CountDownTimer.cancelTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (CountDownTimer.remainingTime > 0)
        ? _resendCodeUpperText()
        : CustomTextButton(
            onPressed: () {
              CountDownTimer.startResendTimer(_updateTimerUI);
            },
            textButtonText: AppTexts.resendButtonText,
          );
  }
}

Widget _resendCodeUpperText() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            AppTexts.resendTimerPrefixText,
            style: AppStyles.resendTextStyle,
          ),
          Text(
            formatDuration(CountDownTimer.remainingTime),
            style: AppStyles.resendCountDownTimerStyle,
          ),
        ],
      ),
      const Text(
        AppTexts.resendTimerSuffixText,
        style: AppStyles.resendTextStyle,
      ),
    ],
  );
}

/// Function to format remaining seconds into minutes:seconds format.
String formatDuration(int remainingSeconds) {
  int minutes = remainingSeconds ~/ 60;
  int seconds = remainingSeconds % 60;
  return '${minutes.toString().padLeft(2, '0')}:'
      '${seconds.toString().padLeft(2, '0')}';
}
