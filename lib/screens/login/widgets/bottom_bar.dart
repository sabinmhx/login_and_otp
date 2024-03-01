import 'package:flutter/material.dart';
import 'package:login_and_otp/app_text.dart';

/// Bottom AppBar to show powered by text and image.
class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(AppTexts.bottomAppBarText),
          Image.asset(
            AppTexts.bottomAppBarImageUrl,
          )
        ],
      ),
    );
  }
}
