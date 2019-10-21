import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nure_timetable/i18n/strings.dart';
import 'package:nure_timetable/pages/settings_page/settings_bloc.dart';
import 'package:nure_timetable/pages/settings_page/settings_state.dart';
import 'package:nure_timetable/pages/timetable/timetable_bloc.dart';
import 'package:nure_timetable/pages/timetable/timetable_page.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsBloc>(builder: (context) => SettingsBloc()),
        BlocProvider<TimetableBloc>(builder: (context) => TimetableBloc()),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: StringProvider.of(context).appName,
            home: TimetablePage(),
            theme: state.themeData,
          );
        },
      ),
    );
  }
}
