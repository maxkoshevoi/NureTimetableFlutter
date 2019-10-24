import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

import 'university.dart';

part 'university_root_object.jser.dart';

class UniversityRootObject {
  @Alias("university")
  final University university;

  const UniversityRootObject({
    @required this.university,
  });
}

@GenSerializer(nullableFields: false)
class UniversityRootObjectSerializer extends Serializer<UniversityRootObject>
    with _$UniversityRootObjectSerializer {}
