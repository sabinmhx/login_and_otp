import 'package:flutter/material.dart';
import 'package:login_and_otp/app_styles.dart';

/// Custom Navigation Button widget.
class CustomNavigationButton extends StatelessWidget {
  /// Perform action on button press.
  final VoidCallback? onPressed;

  /// Icon Data for displaying icon inside the container.
  final IconData icon;

  const CustomNavigationButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: navigationButtonContainerHeight,
      width: navigationButtonContainerWidth,
      decoration: AppStyles.navigationButtonBoxDecoration,
      child: IconButton(
        icon: Icon(icon),
        iconSize: navigationButtonIconSize,
        // If onPressed is null, use an empty callback.
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
