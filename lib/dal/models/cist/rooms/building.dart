import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

import '../models.dart';

part 'building.jser.dart';

class Building {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  @Alias("auditories")
  final List<Room> rooms;

  const Building(this.id, this.shortName, this.fullName, this.rooms);
}

@GenSerializer()
class BuildingSerializer extends Serializer<Building> with _$BuildingSerializer {}
