import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';
import 'package:nure_timetable/api/util/field_processors/date_field_processor.dart';

export 'package:nure_timetable/api/util/field_processors/date_field_processor.dart';

class Event {
  @Alias("subject_id")
  final int lessonId;

  @Alias("start_time", processor: EpochSecondsProcessor())
  final DateTime startTime;

  @Alias("end_time", processor: EpochSecondsProcessor())
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

  const Event({
    @required this.lessonId,
    @required this.startTime,
    @required this.endTime,
    @required this.typeId,
    @required this.pairNumber,
    @required this.room,
    @required this.teacherIds,
    @required this.groupIds,
  });
}
