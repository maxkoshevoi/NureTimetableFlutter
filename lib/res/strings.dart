import 'package:nure_timetable/utils/storage.dart';

import 'strings/supported_locale.dart';

part 'strings/strings_provider.dart';
part 'strings/strings_provider_en.dart';

abstract class Strings {
  Strings._();

  static StringsProvider current() {
    String savedLangCode = Storage().languageCode;
    String languageCode = savedLangCode ?? SupportedLocale.defaultLocale;
    return ofLanguageCode(languageCode);
  }

  static StringsProvider ofLanguageCode(String languageCode) {
    if (languageCode == SupportedLocale.english.languageCode) return EnStrings._();
    return EnStrings._();
  }
}
