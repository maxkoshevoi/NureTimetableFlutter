import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

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
