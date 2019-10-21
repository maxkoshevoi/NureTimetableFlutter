import 'package:flutter/material.dart';

import 'models.dart';

class Room {
  final int id;
  final String name;
  final int floor;
  final bool havePower;
  final List<RoomType> roomTypes;
  final BaseEntity<String> building;

  Room({
    @required this.id,
    @required this.name,
    @required this.floor,
    @required this.havePower,
    @required this.roomTypes,
    @required this.building,
  });
}
