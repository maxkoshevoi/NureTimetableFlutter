import 'package:flutter/material.dart';

import 'models.dart';

class Event {
  final EventType type;
  final DateTime start;
  final DateTime end;
  final String roomName;
  final Lesson lesson;
  final int pairNumber;
  final List<Teacher> teachers;
  final List<Group> groups;

  Event({
    @required this.type,
    @required this.start,
    @required this.end,
    @required this.roomName,
    @required this.lesson,
    @required this.pairNumber,
    @required this.teachers,
    @required this.groups,
  });

  @override
  List<Object> get props => [type, start, end, roomName, lesson, pairNumber, teachers, groups];
}
