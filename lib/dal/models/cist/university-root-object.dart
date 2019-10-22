import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'models.dart';

part 'university-root-object.jser.dart';

class UniversityRootObject {
  @Alias("university")
  final University university;

  const UniversityRootObject(this.university);
}

@GenSerializer()
class UniversityRootObjectSerializer extends Serializer<UniversityRootObject> with _$UniversityRootObjectSerializer {}
