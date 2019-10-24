import 'package:chopper/chopper.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:nure_timetable/api/models/cist/events/event.dart';
import 'package:nure_timetable/api/models/cist/events/event_type.dart';
import 'package:nure_timetable/api/models/cist/events/lesson.dart';
import 'package:nure_timetable/api/models/cist/events/planned_hours.dart';
import 'package:nure_timetable/api/models/cist/events/timetable.dart';
import 'package:nure_timetable/api/models/cist/groups/direction.dart';
import 'package:nure_timetable/api/models/cist/groups/group.dart';
import 'package:nure_timetable/api/models/cist/groups/speciality.dart';
import 'package:nure_timetable/api/models/cist/rooms/building.dart';
import 'package:nure_timetable/api/models/cist/rooms/room.dart';
import 'package:nure_timetable/api/models/cist/rooms/room_type.dart';
import 'package:nure_timetable/api/models/cist/teachers/department.dart';
import 'package:nure_timetable/api/models/cist/teachers/teacher.dart';

//fixme remove

/// Map all your serializer in a repository
final repository = SerializerRepoImpl(serializers: [
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

class JaguarJsonConverter extends JsonConverter {
  dynamic decode<Item>(entity) {
    /// handle case when we want to access to Map<String, dynamic> directly
    /// getResource or getMapResource
    /// Avoid dynamic or unconverted value, this could lead to several issues
    if (entity is Item) return entity;

    final serializer = repository.getByType<Item>(
      Item,
    );

    /// throw serializer not found error;
    if (serializer == null) return null;

    if (entity is Map) return serializer.fromMap(entity);

    if (entity is List) return serializer.fromList(entity.cast<Map>());

    return entity;
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    final jsonRes = super.convertResponse<ResultType, Item>(response);

//    response = response.replaceAll("&amp;", "&");
//    response = response.replaceAll("\"events\":[\n]}]", "\"events\": []");
    return jsonRes.replace<ResultType>(
      body: decode<Item>(jsonRes.body),
    );
  }

  @override
  Request convertRequest(Request request) => super.convertRequest(
        request.replace(
          body: repository.to(request.body),
        ),
      );

//  final _errorSerializer = ResourceErrorSerializer();
//
//  @override
//  Response convertError<ResultType, ItemType>(Response response) {
//    // use [JsonConverter] to decode json
//    final jsonRes = super.convertError(response);
//    return jsonRes.replace(body: _errorSerializer.fromMap(jsonRes.body));
//  }
}
