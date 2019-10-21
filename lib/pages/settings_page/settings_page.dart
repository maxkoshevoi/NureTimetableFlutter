import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nure_timetable/i18n/strings.dart';
import 'package:nure_timetable/pages/settings_page/settings_bloc.dart';
import 'package:nure_timetable/pages/settings_page/settings_event.dart';
import 'package:nure_timetable/pages/settings_page/settings_state.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringProvider.of(context).settings),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
        return ListView.custom(
          childrenDelegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.format_paint),
                title: Text(
                  StringProvider.of(context).toggleTheme,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  BlocProvider.of<SettingsBloc>(context).add(
                    ToggleThemeEvent(),
                  );
                },
              ),
              _buildSeparator(),
              ListTile(
                leading: Icon(Icons.date_range),
                title: Text(
                  StringProvider.of(context).daysPerPage,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  "${state.daysPerPage}",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Slider(
                value: state.daysPerPage.toDouble(),
                min: 2,
                max: 7,
                divisions: 5,
                semanticFormatterCallback: (value) => "${value.toInt()}",
                onChanged: (newValue) {
                  BlocProvider.of<SettingsBloc>(context).add(
                    ChangeDaysPerPageEvent(newValue.toInt()),
                  );
                },
              ),
              _buildSeparator(),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildSeparator() {
    return Container(height: 1, color: Colors.grey.shade200);
  }
}
