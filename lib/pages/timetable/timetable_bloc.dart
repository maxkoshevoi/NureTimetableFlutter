import 'package:bloc/bloc.dart';
import 'package:nure_timetable/pages/timetable/timetable_event.dart';
import 'package:nure_timetable/pages/timetable/timetable_state.dart';

class TimetableBloc extends Bloc<TimetableEvent, TimetableState> {
  TimetableBloc();

  @override
  TimetableState get initialState => TimetableEmpty();

  @override
  Stream<TimetableState> mapEventToState(TimetableEvent event) async* {
    yield TimetableEmpty();
  }
}
