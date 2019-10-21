import 'package:flutter/material.dart';

import 'models.dart';

class Group {
  final int id;
  final String name;
  final BaseEntity<int> faculty;
  final BaseEntity<int> direction;
  final BaseEntity<int> speciality;

  Group({
    @required this.id,
    @required this.name,
    @required this.faculty,
    @required this.direction,
    @required this.speciality,
  });
}
