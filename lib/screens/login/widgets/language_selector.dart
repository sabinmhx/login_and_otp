import 'package:flutter/material.dart';
import 'package:login_and_otp/app_text.dart';
import 'package:login_and_otp/model/language.dart';
import 'package:login_and_otp/widgets/custom_modal_bottom_sheet_title.dart';
import 'package:login_and_otp/app_styles.dart';

/// Displays a modal bottom sheet to display languages and
/// select language to show checkbox in selected language and
/// change app language accordingly.
class LanguageSelector extends StatefulWidget {
  final Map<String, Language> languageMap;

  const LanguageSelector({
    super.key,
    required this.languageMap,
  });

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  /// Selected language to show the checkbox in user selected language
  Language? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _showLanguages(context),
      child: const Row(
        children: [
          Text(
            AppTexts.languageSelectorButtonText,
            style: AppStyles.languageSelectorButtonStyle,
          ),
        ],
      ),
    );
  }

  void _showLanguages(BuildContext context) {
    showModalBottomSheet(
      shape: AppStyles.modalBottomSheetShapeStyle,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomModalBottomSheetTitle(
                  bottomSheetTitleText: AppTexts.languageSelectorTitleText,
                ),
                const Divider(thickness: 1.0),
                ListView(
                  shrinkWrap: true,
                  children: languageMap.keys.map((languageCode) {
                    final language = languageMap[languageCode]!;
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(language.languageIcon),
                      ),
                      title: Text(language.language),
                      trailing: _selectedLanguage == language
                          ? AppStyles.checkBoxIcon
                          : null,
                      onTap: () {
                        setState(() {
                          _selectedLanguage = language;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
