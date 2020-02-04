part of '../strings.dart';

class EnStrings implements StringsProvider {
  EnStrings._();

  @override
  SupportedLocale get locale => SupportedLocale.english;

  @override
  String get languageShrug => 'ENG';

  @override
  String get textNoInternet => 'No internet';

  @override
  String get error => "Error";

  @override
  String get appName => 'NureTimetable';

  @override
  String get about => 'About';

  @override
  String get timetable => 'Timetable';

  @override
  String get settings => "Settings";

  @override
  String get toggleTheme => "Toggle theme";

  @override
  String get daysPerPage => "Days per page";
}
