import 'package:jaguar_serializer/jaguar_serializer.dart';

import '../../models/json_serializers.dart';
import 'cist/events/event.dart';
import 'cist/events/event_type.dart';
import 'cist/events/lesson.dart';
import 'cist/events/planned_hours.dart';
import 'cist/events/timetable.dart';
import 'cist/faculty.dart';
import 'cist/groups/direction.dart';
import 'cist/groups/group.dart';
import 'cist/groups/speciality.dart';
import 'cist/rooms/building.dart';
import 'cist/rooms/room.dart';
import 'cist/rooms/room_type.dart';
import 'cist/teachers/department.dart';
import 'cist/teachers/teacher.dart';
import 'cist/university.dart';
import 'cist/university_root_object.dart';
import 'login_request.dart';
import 'register_request.dart';
import 'request_error.dart';

part 'api_json_serializers.jser.dart';

final serializerRepo = SerializerRepoImpl(serializers: [
  ...modelSerializerRepo.serializers,
  RequestErrorSerializer(),
  RegisterRequestSerializer(),
  LoginRequestSerializer(),
  //cist/event
  EventSerializer(),
  EventTypeSerializer(),
  LessonSerializer(),
  PlannedHoursSerializer(),
  TimetableSerializer(),
  //cist/group
  DirectionSerializer(),
  GroupSerializer(),
  SpecialitySerializer(),
  //cist/rooms
  BuildingSerializer(),
  RoomSerializer(),
  RoomTypeSerializer(),
  //cist/teachers
  DepartmentSerializer(),
  TeacherSerializer(),
]);

@GenSerializer()
class RequestErrorSerializer extends Serializer<RequestError> with _$RequestErrorSerializer {}

@GenSerializer()
class RegisterRequestSerializer extends Serializer<RegisterRequest> with _$RegisterRequestSerializer {}

@GenSerializer()
class LoginRequestSerializer extends Serializer<LoginRequest> with _$LoginRequestSerializer {}

@GenSerializer(nullableFields: false)
class EventSerializer extends Serializer<Event> with _$EventSerializer {}

@GenSerializer(nullableFields: false)
class EventTypeSerializer extends Serializer<EventType> with _$EventTypeSerializer {}

@GenSerializer(nullableFields: false)
class LessonSerializer extends Serializer<Lesson> with _$LessonSerializer {}

@GenSerializer(nullableFields: false)
class PlannedHoursSerializer extends Serializer<PlannedHours> with _$PlannedHoursSerializer {}

@GenSerializer(nullableFields: false)
class TimetableSerializer extends Serializer<Timetable> with _$TimetableSerializer {}

@GenSerializer(nullableFields: false)
class DirectionSerializer extends Serializer<Direction> with _$DirectionSerializer {}

@GenSerializer(nullableFields: false)
class GroupSerializer extends Serializer<Group> with _$GroupSerializer {}

@GenSerializer(nullableFields: false)
class SpecialitySerializer extends Serializer<Speciality> with _$SpecialitySerializer {}

@GenSerializer(nullableFields: false)
class BuildingSerializer extends Serializer<Building> with _$BuildingSerializer {}

@GenSerializer(nullableFields: false)
class RoomSerializer extends Serializer<Room> with _$RoomSerializer {}

@GenSerializer(nullableFields: false)
class RoomTypeSerializer extends Serializer<RoomType> with _$RoomTypeSerializer {}

@GenSerializer(nullableFields: false)
class DepartmentSerializer extends Serializer<Department> with _$DepartmentSerializer {}

@GenSerializer(nullableFields: false)
class TeacherSerializer extends Serializer<Teacher> with _$TeacherSerializer {}

@GenSerializer(nullableFields: false)
class FacultySerializer extends Serializer<Faculty> with _$FacultySerializer {}

@GenSerializer(nullableFields: false)
class UniversitySerializer extends Serializer<University> with _$UniversitySerializer {}

@GenSerializer(nullableFields: false)
class UniversityRootObjectSerializer extends Serializer<UniversityRootObject> with _$UniversityRootObjectSerializer {}
