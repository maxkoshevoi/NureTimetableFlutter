part of '../strings.dart';

abstract class StringsProvider {
  SupportedLocale get locale;

  String get languageShrug;

  String get appName;

  String get textNoInternet;

  String get error;

  String get about;

  String get timetable;

  String get settings;

  String get toggleTheme;

  String get daysPerPage;
}
