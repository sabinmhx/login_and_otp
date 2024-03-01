class Language {
  late String language;
  late String languageIcon;

  Language(this.language, this.languageIcon);
}

Map<String, Language> languageMap = {
  'en': Language('English', 'assets/country_flags/gb.png'),
  'my': Language('Melayu', 'assets/country_flags/my.png'),
  'cn': Language('Chinese', 'assets/country_flags/cn.png'),
};
