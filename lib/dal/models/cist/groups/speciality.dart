import 'package:jaguar_serializer/jaguar_serializer.dart';
import '../models.dart';

part 'speciality.jser.dart';

class Speciality {
  @Alias("id")
  final int id;

  @Alias("short_name")
  final String shortName;

  @Alias("full_name")
  final String fullName;

  @Alias("groups")
  final List<Group> groups;

  const Speciality(this.id, this.shortName, this.fullName, this.groups);
}

@GenSerializer(
  serializers: [GroupSerializer],
)
class SpecialitySerializer extends Serializer<Speciality> with _$SpecialitySerializer {}
