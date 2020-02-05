import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';
import 'package:nure_timetable/api/util/field_processors/replace_field_processor.dart';

import 'room_type.dart';

export 'package:nure_timetable/api/util/field_processors/replace_field_processor.dart';

class Room {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("floor", isNullable: true)
  final int floor;

  @Alias("is_have_power", isNullable: true, processor: StringBoolReplaceProcessor())
  final bool isHavePower;

  @Alias("auditory_types")
  final List<RoomType> roomTypes;

  const Room({
    @required this.id,
    @required this.shortName,
    @required this.floor,
    @required this.isHavePower,
    @required this.roomTypes,
  });
}
