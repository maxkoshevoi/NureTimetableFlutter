import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

import '../models.dart';

part 'direction.jser.dart';

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

  const Direction(this.id, this.shortName, this.fullName, this.groups, this.specialities);
}

@GenSerializer()
class DirectionSerializer extends Serializer<Direction> with _$DirectionSerializer {}
