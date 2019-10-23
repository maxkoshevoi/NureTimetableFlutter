import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'hours_planned.jser.dart';

class HoursPlanned {
  @Alias("type")
  final int eventTypeId;

  @Alias("val")
  final int hours;

  @Alias("teachers")
  final List<int> teacherIds;

  const HoursPlanned(this.eventTypeId, this.hours, this.teacherIds);
}

@GenSerializer()
class HoursPlannedSerializer extends Serializer<HoursPlanned> with _$HoursPlannedSerializer {}
