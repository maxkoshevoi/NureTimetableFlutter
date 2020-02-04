import 'package:intl/intl.dart';

const String fullDateTimePattern = 'MMMM dd, EEEEE h:mm a';
const String standardTimePattern = 'h:mm a';
const String weekdayDatePattern = 'dd MMMM, EEEEE';
const String slashedDatePattern = 'dd/MM/yyyy';
const String slashedReversedDatePattern = 'yyyy/MM/dd';
const String dashedReversedDatePattern = 'yyyy-MM-dd';

DateTime getLocalDate(DateTime dateTime) {
  DateTime localDateTime = DateTime.fromMicrosecondsSinceEpoch(
    dateTime.microsecondsSinceEpoch,
    isUtc: true,
  ).toLocal();
  return localDateTime.add(localDateTime.timeZoneOffset);
}

DateTime parseDateTime(String dateText, String datePattern) {
  if (dateText == null || dateText.isEmpty) return null;

  try {
    return DateFormat(datePattern).parse(dateText);
  } catch (_) {
    return null;
  }
}

String formatLocalDateTime(DateTime dateTime, String datePattern) {
  if (dateTime == null || datePattern == null) return '';

  return formatDateTime(getLocalDate(dateTime), datePattern);
}

String formatDateTime(DateTime dateTime, String datePattern) {
  if (dateTime == null || datePattern == null) return '';

  try {
    return DateFormat(datePattern).format(dateTime);
  } catch (_) {
    return '';
  }
}

int getDaysInCurrentMonth() {
  return getDaysInMonth(DateTime.now().year, DateTime.now().month);
}

int getDaysInMonth(int year, int month) {
  DateTime newMonth = DateTime(year, month);
  DateTime newMonthNext = DateTime(year, month + 1);
  return newMonthNext.difference(newMonth).inDays;
}

int getWeekInYear(DateTime dateTime) {
  final startOfYear = DateTime(dateTime.year, 1, 1, 0, 0);
  final firstMonday = startOfYear.weekday;
  final daysInFirstWeek = 8 - firstMonday;
  final diff = dateTime.difference(startOfYear);
  int weeks = ((diff.inDays - daysInFirstWeek) / 7).ceil();
  // It might differ how we want to treat the first week
  if (daysInFirstWeek > 3) {
    weeks += 1;
  }
  return weeks;
}

int getDayInYear(DateTime dateTime) {
  final diff = dateTime.difference(DateTime(dateTime.year, 1, 1, 0, 0)).abs();
  return diff.inDays;
}
