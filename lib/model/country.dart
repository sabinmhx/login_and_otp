class Country {
  final String name;
  final String code;
  final String flag;

  Country(this.name, this.code, this.flag);
}

final Map<String, Country> countries = {
  'np': Country('Nepal', '+977', 'assets/country_flags/np.png'),
  'my': Country('Malaysia', '+60', 'assets/country_flags/my.png'),
  'ad': Country('Andorra', '+376', 'assets/country_flags/ad.png'),
  'as': Country('Australia', '+61', 'assets/country_flags/as.png'),
  'au': Country('Austria', '+43', 'assets/country_flags/au.png'),
  'bd': Country('Bangladesh', '+880', 'assets/country_flags/bg.png'),
  'be': Country('Belgium', '+32', 'assets/country_flags/be.png'),
  'ca': Country('Canada', '+1', 'assets/country_flags/ca.png'),
  'cn': Country('China', '+86', 'assets/country_flags/cn.png'),
  'cy': Country('Cyprus', '+357', 'assets/country_flags/cy.png'),
  'ee': Country('Estonia', '+372', 'assets/country_flags/ee.png'),
  'fi': Country('Finland', '+358', 'assets/country_flags/fi.png'),
  'fr': Country('France', '+33', 'assets/country_flags/fr.png'),
  'gm': Country('Germany', '+49', 'assets/country_flags/gm.png'),
  'gr': Country('Greece', '+30', 'assets/country_flags/gr.png'),
};
