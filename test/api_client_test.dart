import 'package:flutter_test/flutter_test.dart';
import 'package:nure_timetable/api/api_client.dart';
import 'package:nure_timetable/api/models/cist/events/timetable.dart';

void main() async {
  test("", () async {
    ApiClient apiClient = ApiClient();
    Timetable timetable = await apiClient.getCistTimetable();
    print(timetable.groups.length);
  });
}
