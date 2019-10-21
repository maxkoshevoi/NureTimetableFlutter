import 'package:flutter/material.dart';
import 'package:nure_timetable/models/models.dart';

class TimetableDto {
  final BaseEntity baseEntity;
  final List<Event> events;
  final List<Lesson> lessons;

  TimetableDto({
    @required this.baseEntity,
    @required this.events,
    @required this.lessons,
  });
}
