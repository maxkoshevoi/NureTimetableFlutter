import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

import '../groups/group.dart';
import '../teachers/teacher.dart';
import 'event.dart';
import 'event_type.dart';
import 'lesson.dart';

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

  const Timetable({
    @required this.timeZone,
    @required this.events,
    @required this.groups,
    @required this.teachers,
    @required this.lessons,
    @required this.eventTypes,
  });
}

@GenSerializer(nullableFields: false)
class TimetableSerializer extends Serializer<Timetable> with _$TimetableSerializer {}
