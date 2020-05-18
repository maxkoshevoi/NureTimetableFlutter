import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:meta/meta.dart';

import 'university.dart';

class UniversityRootObject {
  @Alias("university")
  final University university;

  const UniversityRootObject({
    @required this.university,
  });
}
