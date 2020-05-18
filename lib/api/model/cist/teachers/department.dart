import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

import 'teacher.dart';

class Department {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  @Alias("teachers")
  final List<Teacher> teachers;

  const Department({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
    @required this.teachers,
  });
}
