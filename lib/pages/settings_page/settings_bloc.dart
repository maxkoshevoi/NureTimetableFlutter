import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nure_timetable/pages/settings_page/settings_event.dart';
import 'package:nure_timetable/pages/settings_page/settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  @override
  SettingsState get initialState {
    return SettingsState(themeData: ThemeData.light(), daysPerPage: 3);
  }

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    if (event is ToggleThemeEvent) {
      yield state.copyWith(
        themeData: state.themeData == ThemeData.dark() ? ThemeData.light() : ThemeData.dark(),
      );
    }
    if (event is ChangeDaysPerPageEvent) {
      yield state.copyWith(
        daysPerPage: event.daysPerPage,
      );
    }
  }
}
