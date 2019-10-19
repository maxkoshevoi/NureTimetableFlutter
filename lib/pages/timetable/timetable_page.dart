import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nure_timetable/i18n/strings.dart';
import 'package:nure_timetable/pages/about/about_page.dart';
import 'package:nure_timetable/pages/timetable/timetable_bloc.dart';
import 'package:nure_timetable/pages/timetable/timetable_state.dart';

class TimetablePage extends StatefulWidget {
  @override
  _TimetablePageState createState() => _TimetablePageState();
}

class _TimetablePageState extends State<TimetablePage> {
  void _onAboutTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AboutPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringProvider.of(context).timetable),
      ),
      body: BlocBuilder<TimetableBloc, TimetableState>(
        builder: (context, state) {
          return Center(
            child: Column(
              children: <Widget>[
                Text(
                  '$state',
                  style: TextStyle(fontSize: 24.0),
                ),
                RaisedButton(
                  child: Text(StringProvider.of(context).about),
                  onPressed: _onAboutTap,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
