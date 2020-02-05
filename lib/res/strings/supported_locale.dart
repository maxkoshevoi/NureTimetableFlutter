class SupportedLocale {
  static const english = SupportedLocale._('en', 'GB');

  static const defaultLocale = english;
  static const supportedLocales = [english];

  final String languageCode;
  final String countryCode;

  const SupportedLocale._(this.languageCode, this.countryCode);

  static SupportedLocale withLanguageCode(String code) => supportedLocales.firstWhere(
        (language) => language.languageCode == code,
        orElse: () => english,
      );

  String get localeCode => toString();

  @override
  String toString() => countryCode == null || countryCode.isEmpty ? languageCode : '${languageCode}_$countryCode';
}
