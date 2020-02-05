import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nure_timetable/architecture/utils/async_stream_builder.dart';
import 'package:nure_timetable/architecture/utils/states.dart';
import 'package:nure_timetable/res/strings.dart';
import 'package:nure_timetable/utils/storage.dart';

import 'settings_page_bloc.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  SettingsPageBloc _bloc = BlocProvider.getBloc<SettingsPageBloc>();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.current().settings),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            AsyncStreamBuilder<int>(
              Storage().daysPerPageSubject.map((value) => SuccessState(value)),
              successBuilder: (_, int daysPerPage) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text(
                        Strings.current().daysPerPage,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      trailing: Text(
                        "$daysPerPage",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Slider(
                      value: daysPerPage.toDouble(),
                      min: 2,
                      max: 7,
                      divisions: 5,
                      semanticFormatterCallback: (value) => "${value.toInt()}",
                      onChanged: (newValue) => Storage().setDaysPerPage(newValue.toInt()),
                    ),
                  ],
                );
              },
            ),
            _buildSeparator(),
          ],
        ),
      ),
    );
  }

  Widget _buildSeparator() => Container(height: 1, color: Colors.grey.shade200);
}
