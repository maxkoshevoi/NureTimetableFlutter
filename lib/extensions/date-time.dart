import 'package:flutter/material.dart';

extension DateTimeEx on DateTime {
  DateTime get date => DateTime(this.year, this.month, this.day);
  TimeOfDay get time => TimeOfDay.fromDateTime(this);
}