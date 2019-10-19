import 'package:flutter/material.dart';

class Lesson {
  final int id;
  final String shortName;
  final String fullName;

  Lesson({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
  });

  @override
  bool operator ==(other) => other != null && other is Lesson && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
