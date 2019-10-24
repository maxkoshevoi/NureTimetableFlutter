import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:nure_timetable/api/cist_api_service.dart';
import 'package:nure_timetable/api/models/cist/events/timetable.dart';
import 'package:nure_timetable/api/serialization/jaguar_json_serializer.dart';
import 'package:nure_timetable/pages/timetable/timetable_event.dart';
import 'package:nure_timetable/pages/timetable/timetable_state.dart';

class TimetableBloc extends Bloc<TimetableEvent, TimetableState> {
  TimetableBloc();

  @override
  TimetableState get initialState => TimetableEmpty();

  @override
  Stream<TimetableState> mapEventToState(TimetableEvent event) async* {
    Timetable timetable = JaguarJsonConverter().decode<Timetable>(
      json.decode(await getCistTimetableMock()),
    );
    yield TimetableEmpty();
//    yield TimetableEmpty();
  }
}
