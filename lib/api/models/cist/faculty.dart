import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';
import 'package:nure_timetable/api/models/cist/groups/direction.dart';
import 'package:nure_timetable/api/models/cist/teachers/department.dart';

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

  const Faculty({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
    @required this.departments,
    @required this.directions,
  });
}

@GenSerializer(nullableFields: false)
class FacultySerializer extends Serializer<Faculty> with _$FacultySerializer {}
