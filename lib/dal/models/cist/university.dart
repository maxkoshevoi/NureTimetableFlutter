import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'models.dart';

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

  const University(this.shortName, this.fullName, this.faculties, this.buildings);
}

@GenSerializer(
  serializers: [FacultySerializer, BuildingSerializer],
)
class UniversitySerializer extends Serializer<University> with _$UniversitySerializer {}
