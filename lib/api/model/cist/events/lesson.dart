import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

import 'planned_hours.dart';

class Lesson {
  @Alias("id")
  final int id;

  @Alias("brief")
  final String shortName;

  @Alias("title")
  final String fullName;

  @Alias("hours")
  final List<PlannedHours> duration;

  const Lesson({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
    @required this.duration,
  });
}
