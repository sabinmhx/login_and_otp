import 'package:flutter/material.dart';
import 'package:login_and_otp/app_text.dart';
import 'package:login_and_otp/model/country.dart';
import 'package:login_and_otp/app_styles.dart';
import 'package:login_and_otp/widgets/custom_modal_bottom_sheet_title.dart';

/// Displays a modal bottom sheet to display a list of countries and
/// select one from the countries to display flag and code in screen.
class CountrySelector extends StatelessWidget {
  final Country selectedCountry;
  final Function(Country) onSelectCountry;

  const CountrySelector({
    super.key,
    required this.selectedCountry,
    required this.onSelectCountry,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _showCountries(context),
      child: Row(
        children: [
          CircleAvatar(
            radius: circleAvatarRadius,
            backgroundImage: AssetImage(selectedCountry.flag),
          ),
          Text(
            '  ${selectedCountry.code}',
          ),
          AppStyles.dropDownArrowIcon,
        ],
      ),
    );
  }

  /// Modal bottom sheet which returns user selected country
  /// as the result to be displayed in the login screen
  void _showCountries(BuildContext context) async {
    final countryResult = await showModalBottomSheet(
      shape: AppStyles.modalBottomSheetShapeStyle,
      context: context,
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomModalBottomSheetTitle(
              bottomSheetTitleText: AppTexts.countrySelectorTitleText,
            ),
            const Divider(
              thickness: 1.0,
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: countries.keys.map((countryCode) {
                    final country = countries[countryCode]!;
                    return GestureDetector(
                      child: Container(
                        decoration: AppStyles.bottomSheetContainerBoxDecoration,
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(bottom: 14.0),
                            child: CircleAvatar(
                              radius: circleAvatarRadius,
                              backgroundImage: AssetImage(country.flag),
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 14.0),
                            child: Text(country.name),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, country);
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        );
      },
    );

    // Only return the country as result if any country is selected.
    // Crashes if condition not checked and user pops the bottom sheet
    if (countryResult != null) {
      onSelectCountry(countryResult!);
    }
  }
}
