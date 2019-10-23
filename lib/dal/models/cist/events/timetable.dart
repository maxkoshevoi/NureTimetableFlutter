import 'package:jaguar_serializer/jaguar_serializer.dart';
import '../models.dart';

part 'timetable.jser.dart';

class Timetable {
  @Alias("time-zone")
  final String timeZone;

  @Alias("events")
  final List<Event> events;

  @Alias("groups")
  final List<Group> groups;

  @Alias("teachers")
  final List<Teacher> teachers;

  @Alias("subjects")
  final List<Lesson> lessons;

  @Alias("types")
  final List<EventType> eventTypes;

  const Timetable(this.timeZone, this.events, this.groups, this.teachers, this.lessons, this.eventTypes);
}

@GenSerializer(
  nullableFields: false,
  serializers: [EventSerializer, GroupSerializer, TeacherSerializer, LessonSerializer, EventTypeSerializer],
)
class TimetableSerializer extends Serializer<Timetable> with _$TimetableSerializer {}
