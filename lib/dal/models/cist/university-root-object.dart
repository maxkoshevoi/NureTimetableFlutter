import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'models.dart';

part 'university-root-object.jser.dart';

class UniversityRootObject {
  @Alias("university")
  final University university;

  const UniversityRootObject(this.university);
}

@GenSerializer(
  serializers: [UniversitySerializer],
)
class UniversityRootObjectSerializer extends Serializer<UniversityRootObject> with _$UniversityRootObjectSerializer {}
