import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

class PlannedHours {
  @Alias("type")
  final int eventTypeId;

  @Alias("val")
  final int hours;

  @Alias("teachers")
  final List<int> teacherIds;

  const PlannedHours({
    @required this.eventTypeId,
    @required this.hours,
    @required this.teacherIds,
  });
}
