import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'teacher.jser.dart';

class Teacher {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  const Teacher(this.id, this.shortName, this.fullName);
}

@GenSerializer()
class TeacherSerializer extends Serializer<Teacher> with _$TeacherSerializer {}
