import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

part 'room_type.jser.dart';

class RoomType {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  const RoomType({
    @required this.id,
    @required this.shortName,
  });
}

@GenSerializer(nullableFields: false)
class RoomTypeSerializer extends Serializer<RoomType> with _$RoomTypeSerializer {}
