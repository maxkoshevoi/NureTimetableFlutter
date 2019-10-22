import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

import '../models.dart';

part 'faculty.jser.dart';

class Faculty {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  // Used when getting Teachers
  @Alias("departments")
  final List<Department> departments;

  // Used when getting Groups
  @Alias("directions")
  final List<Direction> directions;

  const Faculty(this.id, this.shortName, this.fullName, this.departments, this.directions);
}

@GenSerializer()
class FacultySerializer extends Serializer<Faculty> with _$FacultySerializer {}
