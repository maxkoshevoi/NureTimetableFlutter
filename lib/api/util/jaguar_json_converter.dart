import 'package:chopper/chopper.dart';
import 'package:nure_timetable/api/model/api_json_serializers.dart';

class JaguarJsonConverter extends JsonConverter {
  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    final jsonResult = decodeJson(response);
    return jsonResult.replace<ResultType>(body: _decode<Item>(jsonResult.body));
  }

  dynamic _decode<Item>(entity) {
    if (entity is Item) return entity;

    final serializer = serializerRepo.getByType<Item>(Item);
    if (serializer == null) return null;
    if (entity is Map) return serializer.fromMap(entity);
    if (entity is List) return serializer.fromList(entity.cast<Map>());
    return entity;
  }

  @override
  Request convertRequest(Request request) {
    return super.convertRequest(
      request.replace(
        body: serializerRepo.to(request.body),
      ),
    );
  }
}
