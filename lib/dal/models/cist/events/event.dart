import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'event.jser.dart';

class Event {
  @Alias("subject_id")
  final int lessonId;

  @Alias("start_time")
  final DateTime startTime;

  @Alias("end_time")
  final DateTime endTime;

  @Alias("type")
  final int typeId;

  @Alias("number_pair")
  final int pairNumber;

  @Alias("auditory")
  final String room;

  @Alias("teachers")
  final List<int> teacherIds;

  @Alias("groups")
  final List<int> groupIds;

  const Event(
    this.lessonId, 
    this.startTime, 
    this.endTime, 
    this.typeId, 
    this.pairNumber, 
    this.room, 
    this.teacherIds, 
    this.groupIds
  );
}

@GenSerializer(
  nullableFields: false,
  fields: const {
    "start_time": const Field(processor: const SecondsProcessor()),
    "end_time": const Field(processor: const SecondsProcessor())
  }
)
class EventSerializer extends Serializer<Event> with _$EventSerializer {}