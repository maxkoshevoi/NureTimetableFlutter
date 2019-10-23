import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'room_type.jser.dart';

class RoomType {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  const RoomType(this.id, this.shortName);
}

@GenSerializer()
class RoomTypeSerializer extends Serializer<RoomType> with _$RoomTypeSerializer {}
