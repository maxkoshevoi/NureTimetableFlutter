import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

part 'teacher.jser.dart';

class Teacher {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  const Teacher({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
  });
}

@GenSerializer(nullableFields: false)
class TeacherSerializer extends Serializer<Teacher> with _$TeacherSerializer {}
