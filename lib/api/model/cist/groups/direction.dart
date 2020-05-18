import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

import 'group.dart';
import 'speciality.dart';

class Direction {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  @Alias("groups")
  final List<Group> groups;

  @Alias("specialities")
  final List<Speciality> specialities;

  const Direction({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
    @required this.groups,
    @required this.specialities,
  });
}
