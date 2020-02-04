import 'dart:async';

import 'package:nure_timetable/res/strings/supported_locale.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  Storage._internal();

  static final Storage _instance = Storage._internal();

  factory Storage() => _instance;

  static const KEY_LANGUAGE_CODE = 'KEY_LANGUAGE_CODE';
  static const KEY_PER_PAGE = 'KEY_LANGUAGE_CODE';

  ///
  /// General
  ///

  Future<T> _doOnPrefs<T>(FutureOr<T> Function(SharedPreferences) function) async {
    return function(await SharedPreferences.getInstance());
  }

  Future<void> clearStorage() => _doOnPrefs((prefs) => prefs.clear());

  ///
  /// Language
  ///

  // ignore: close_sinks
  final _languageCodeSubject = BehaviorSubject<String>.seeded(SupportedLocale.defaultLocale.languageCode);

  Stream<String> get languageCodeStream => _languageCodeSubject.stream;

  String get languageCode => _languageCodeSubject.value;

  Future<void> initializeLanguage() async {
    String savedLanguageCode = await _getLanguageCode();
    if (savedLanguageCode == null) {
      await _setLanguageCode(SupportedLocale.defaultLocale.languageCode);
    } else {
      _languageCodeSubject.add(savedLanguageCode);
    }
  }

  Future<void> setLanguageCode(String languageCode) async {
    await _setLanguageCode(languageCode);
    _languageCodeSubject.add(languageCode);
  }

  Future<void> _setLanguageCode(String code) => _doOnPrefs((prefs) => prefs.setString(KEY_LANGUAGE_CODE, code));

  Future<String> _getLanguageCode() => _doOnPrefs((prefs) => prefs.getString(KEY_LANGUAGE_CODE));

  ///
  /// Paths
  ///

  String _cacheDirectoryPath;

  String get cacheDirectoryPath => _cacheDirectoryPath;

  Future<void> initializePath() async {
    final appDirectory = await getApplicationSupportDirectory();
    _cacheDirectoryPath = appDirectory.path;
  }

  ///
  /// General
  ///
// ignore: close_sinks
  final _daysPerPageSubject = BehaviorSubject<int>.seeded(3);

  Stream<int> get daysPerPageSubject => _daysPerPageSubject.stream;

  int get daysPerPage => _daysPerPageSubject.value;

  Future<void> initializeSettings() async {
    // TODO read from storage
    _daysPerPageSubject.add(await _getDaysPerPage() ?? 3);
  }

  Future<void> setDaysPerPage(int daysPerPage) async {
    await _setDaysPerPage(daysPerPage);
    _daysPerPageSubject.add(daysPerPage);
  }

  Future<void> _setDaysPerPage(int daysPerPage) => _doOnPrefs((prefs) => prefs.setInt(KEY_PER_PAGE, daysPerPage));

  Future<int> _getDaysPerPage() => _doOnPrefs((prefs) => prefs.getInt(KEY_PER_PAGE));
//
//  Future<void> setOnBoardingShown() => _doOnPrefs((prefs) => prefs.setBool(KEY_IS_ON_BOARDING_SHOWN, true));
//
//  Future<bool> isOnBoardingShown() => _doOnPrefs((prefs) => prefs.getBool(KEY_IS_ON_BOARDING_SHOWN));

}
