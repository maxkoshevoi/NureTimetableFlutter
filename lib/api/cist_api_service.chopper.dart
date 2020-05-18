// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cist_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$CistApiService extends CistApiService {
  _$CistApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = CistApiService;

  Future<Response<Timetable>> getCistTimetable(
      {int typeId,
      dynamic timetableId,
      dynamic timeFrom,
      dynamic timeTo,
      dynamic apiKey}) {
    final $url =
        '/ias/app/tt/P_API_EVEN_JSON?type_id=${typeId}&timetable_id=${timetableId}&time_from=${timeFrom}&time_to=${timeTo}&idClient=${apiKey}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Timetable, Timetable>($request);
  }
}
