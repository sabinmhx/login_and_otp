import 'package:flutter/material.dart';
import 'package:login_and_otp/screens/authentication/authentication_page.dart';
import 'package:login_and_otp/screens/login/widgets/bottom_bar.dart';
import 'package:login_and_otp/app_text.dart';
import 'package:login_and_otp/screens/login/widgets/login_page_top_elements.dart';
import 'package:login_and_otp/widgets/custom_elevated_button.dart';
import 'package:login_and_otp/screens/login/widgets/login_page_text.dart';
import 'package:login_and_otp/widgets/custom_text_field.dart';
import 'package:login_and_otp/screens/login/widgets/country_selector.dart';
import 'package:login_and_otp/screens/login/widgets/language_selector.dart';
import 'package:login_and_otp/widgets/error_alert_dialog_box.dart';
import 'package:login_and_otp/model/language.dart';
import 'package:login_and_otp/model/country.dart';

/// Displays Login page to the user.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /// Controller for entering phone number.
  final TextEditingController _phoneNumberController = TextEditingController();

  /// Form Key to validate phone number on login.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  /// For displaying first value of countries in screen.
  Country _selectedCountry =
      countries.isNotEmpty ? countries.values.first : Country('', '', '');

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const LoginPageTopElements(),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 0.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text of login page.
                  const LoginPageText(),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      // Select Country from the country list.
                      CountrySelector(
                        selectedCountry: _selectedCountry,
                        onSelectCountry: (country) {
                          setState(() {
                            _selectedCountry = country;
                          });
                        },
                      ),
                      const SizedBox(width: 5.0),

                      /// Input field for phone number.
                      Expanded(
                        child: CustomTextField(
                          controller: _phoneNumberController,
                          labelText: AppTexts.phoneNumberFieldLabelText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),

                  // Language Selector to select language.
                  Row(
                    children: [
                      LanguageSelector(
                        languageMap: languageMap,
                      ),
                      const Spacer(),

                      // Login Button to navigate to authentication page on
                      // successful validation.
                      CustomElevatedButton(
                        userInputToValidate: _phoneNumberController.text,
                        formKey: _formKey,
                        elevatedButtonText: AppTexts.loginButtonText,
                        onButtonPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Close keybopard before validating.
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus &&
                                currentFocus.focusedChild != null) {
                              currentFocus.focusedChild?.unfocus();
                            }
                            if (validateUserInputLength(
                                _phoneNumberController.text)) {
                              showDialog(
                                context: context,
                                builder: (context) =>
                                    const ErrorAlertDialogBox(),
                              );
                            } else {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AuthenticationPage(
                                    phoneNumber: _phoneNumberController.text,
                                  ),
                                ),
                              );
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
