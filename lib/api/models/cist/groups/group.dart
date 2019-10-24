import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

part 'group.jser.dart';

class Group {
  @Alias("id")
  final int id;

  @Alias("name")
  final String name;

  const Group({
    @required this.id,
    @required this.name,
  });
}

@GenSerializer(nullableFields: false)
class GroupSerializer extends Serializer<Group> with _$GroupSerializer {}
