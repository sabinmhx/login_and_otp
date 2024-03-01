import 'dart:async';
import 'dart:developer';

class CountDownTimer {
  static late Timer resendTimer;
  static late int remainingTime;

  static void startResendTimer(void Function() updateTimer) {
    remainingTime = 60;
    resendTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        remainingTime--;
        updateTimer();
        log(remainingTime.toString());
      } else {
        // Cancel the timer after resendTimout is 0.
        cancelTimer();
      }
    });
  }

  static void cancelTimer() {
    resendTimer.cancel();
    log('Timer has been cancelled');
  }
}
