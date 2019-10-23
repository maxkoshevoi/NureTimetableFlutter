import 'package:jaguar_serializer/jaguar_serializer.dart';
import '../models.dart';

part 'lesson.jser.dart';

class Lesson {
  @Alias("id")
  final int id;

  @Alias("brief")
  final String shortName;

  @Alias("title")
  final String fullName;

  @Alias("hours")
  final List<HoursPlanned> duration;

  const Lesson(this.id, this.shortName, this.fullName, this.duration);
}

@GenSerializer(
  nullableFields: false,
  serializers: [HoursPlannedSerializer],
)
class LessonSerializer extends Serializer<Lesson> with _$LessonSerializer {}
