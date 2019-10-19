import 'package:flutter/cupertino.dart';

class StringProvider {
  StringProvider._();

  static IStrings of(BuildContext context) => _EnglishWords();
}

abstract class IStrings {
  String get appName;

  String get about;

  String get timetable;
}

class _EnglishWords implements IStrings {
  @override
  String get appName => 'NureTimetable';

  @override
  String get about => 'About';

  @override
  String get timetable => 'Timetable';
}
