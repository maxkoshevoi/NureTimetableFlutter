import 'package:jaguar_serializer/jaguar_serializer.dart';
import '../models.dart';

part 'department.jser.dart';

class Department {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  @Alias("teachers")
  final List<Teacher> teachers;

  const Department(this.id, this.shortName, this.fullName, this.teachers);
}

@GenSerializer(
  serializers: [TeacherSerializer],
)
class DepartmentSerializer extends Serializer<Department> with _$DepartmentSerializer {}
