import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';
import 'package:nure_timetable/api/models/cist/faculty.dart';
import 'package:nure_timetable/api/models/cist/rooms/building.dart';

part 'university.jser.dart';

class University {
  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  // Used when getting Teachers or Groups
  @Alias("faculties")
  final List<Faculty> faculties;

  // Used when getting Rooms
  @Alias("buildings")
  final List<Building> buildings;

  const University({
    @required this.shortName,
    @required this.fullName,
    @required this.faculties,
    @required this.buildings,
  });
}

@GenSerializer(
  nullableFields: false,
)
class UniversitySerializer extends Serializer<University> with _$UniversitySerializer {}
