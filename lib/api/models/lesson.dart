import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'lesson.jser.dart';

class Lesson {
  final int id;

  @Alias("brief")
  final String shortName;

  @Alias("title")
  final String fullName;

//  [JsonProperty("hours")]
//  List<HoursPlanned> Duration { get; set; }

  Lesson({
    @required this.id,
    @required this.shortName,
    @required this.fullName,
  });
}

@GenSerializer()
class LessonSerializer extends Serializer<Lesson> with _$LessonSerializer {}
