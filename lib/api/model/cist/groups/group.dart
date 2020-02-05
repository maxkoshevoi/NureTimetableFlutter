import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

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
