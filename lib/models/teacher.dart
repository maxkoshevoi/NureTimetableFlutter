import 'package:flutter/material.dart';

import 'models.dart';

class Teacher {
  final int id;
  final String name;
  final String shortName;
  final BaseEntity<int> department;

  Teacher({
    @required this.id,
    @required this.name,
    @required this.shortName,
    @required this.department,
  });
}
