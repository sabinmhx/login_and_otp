import 'package:flutter/material.dart';

/// All the styling used in the app.
class AppStyles {
  /// TextButton Text Style.
  static const TextStyle textButtonTextStyle = TextStyle(
    fontSize: 16.0,
    color: primaryColor,
  );

  /// Authentication Page text style.
  static const TextStyle authenticationPageHeaderTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  /// Authentication Page Description Text Style.
  static const TextStyle authenticationPageDescriptionTextStyle = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
  );

  /// Login Button.
  static const TextStyle elevatedButtonTextStyle = TextStyle(
    fontSize: 20.0,
  );

  /// Login Page Header Text Style.
  static const TextStyle loginPageHeaderTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );

  /// Login Page Description Page Style.
  static const TextStyle loginPageDescriptionTextStyle = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
  );

  /// Custom Keyboard Text.
  static const TextStyle customKeyboardKeysStyle = TextStyle(
    fontSize: 25.0,
  );

  /// Resend text style.
  static const TextStyle resendTextStyle = TextStyle(fontSize: 13.0);

  /// Resend timer text style.
  static const TextStyle resendTimerTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 13.0,
  );

  /// Modal Bottom Sheet title style.
  static const TextStyle modalBottomSheetTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );

  /// Language Selector Button Style.
  static const TextStyle languageSelectorButtonStyle = TextStyle(
    color: primaryColor,
    decoration: TextDecoration.underline,
    decorationColor: primaryColor,
    decorationThickness: 2,
  );

  /// Phone number text style in authentication page.
  static const TextStyle phoneNumberTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
  );

  /// CountDown Resend timer text style
  static const TextStyle resendCountDownTimerStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  /// Elevated Button Style.
  static ButtonStyle elevatedButtonStyle = TextButton.styleFrom(
    foregroundColor: buttonForegroundColor,
    backgroundColor: primaryColor,
  );

  /// TextButton Border Style.
  static ButtonStyle textButtonBorderStyle = TextButton.styleFrom(
    side: const BorderSide(
      color: primaryColor,
      width: 2.0,
    ),
  );

  /// Alert dialog box shape.
  static ShapeBorder alertDialogBoxButtonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  );

  /// Custom Back Button Box Decoration.
  static BoxDecoration navigationButtonBoxDecoration = BoxDecoration(
    border: Border.all(
      width: 2.0,
      color: Colors.grey,
    ),
    borderRadius: BorderRadius.circular(7.0),
  );

  /// Modal bottom sheet container box decoration.
  static const BoxDecoration bottomSheetContainerBoxDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 1.0,
        color: Colors.grey,
      ),
    ),
  );

  /// Modal Bottm Sheet Shape Style.
  static ShapeBorder modalBottomSheetShapeStyle = const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(19.0),
    ),
  );

  /// Outline Input Border Style for focused border.
  static const OutlineInputBorder focusedOutlineInputStyle = OutlineInputBorder(
    borderSide: BorderSide(color: primaryColor),
    borderRadius: BorderRadius.all(
      Radius.circular(19.0),
    ),
  );

  /// Outline Input Border Style for border.
  static const OutlineInputBorder defaultOutlineInputBorderStyle =
      OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(19.0),
    ),
  );

  /// Input Decoration for OTP Field.
  static const InputDecoration oTPFieldInputDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
  );

  /// Container Box Decoration for OTP Field.
  static BoxDecoration oTPFieldContainerBoxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.4),
        blurRadius: 50,
        blurStyle: BlurStyle.outer,
      ),
    ],
  );

  /// Login page country selector dropdown arrow icon
  static const Icon dropDownArrowIcon = Icon(
    Icons.keyboard_arrow_down,
    color: Colors.black,
  );

  /// Language Bottom Sheet check box icon.
  static const Icon checkBoxIcon = Icon(
    Icons.check_circle,
    color: primaryColor,
  );

  /// Icon data for back button.
  static const IconData backIcon = Icons.arrow_back_ios_new;

  /// Icon data for help centre button.
  static const IconData helpCentreIcon = Icons.supervised_user_circle_rounded;
}

/// Constants for Modal Bottom Sheet.

const double circleAvatarRadius = 14.0;

/// Constants for Navigation Buttons.
const double navigationButtonIconSize = 20.0;
const double appBarIconBoxBorderRadius = 7.0;
const double navigationButtonContainerHeight = 40.0;
const double navigationButtonContainerWidth = 40.0;

/// Constants for CustomKeyboard.
const double keyboardKeysContainerHeight = 70.0;

const Color primaryColor = Color.fromRGBO(46, 78, 220, 1.0);
const buttonForegroundColor = Colors.white;
