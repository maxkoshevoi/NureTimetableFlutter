import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:nure_timetable/dal/helpers/serrialisation.dart';
import '../models.dart';

part 'room.jser.dart';

class Room {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("floor", isNullable: true)
  final int floor;

  @Alias("is_have_power", isNullable: true)
  final bool isHavePower;

  @Alias("auditory_types")
  final List<RoomType> roomTypes;

  const Room(this.id, this.shortName, this.floor, this.isHavePower, this.roomTypes);
}

@GenSerializer(
  nullableFields: false,
  serializers: [RoomTypeSerializer],
  fields: const {"isHavePower": const Field(processor: const StringBoolProcessor())} // this should be is_have_power?
)
class RoomSerializer extends Serializer<Room> with _$RoomSerializer {}