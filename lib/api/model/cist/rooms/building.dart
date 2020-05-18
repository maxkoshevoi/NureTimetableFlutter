import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

import 'room.dart';

class Building {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  @Alias("auditories")
  final List<Room> rooms;

  const Building({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
    @required this.rooms,
  });
}
