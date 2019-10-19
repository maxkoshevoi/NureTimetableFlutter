import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nure_timetable/i18n/strings.dart';
import 'package:nure_timetable/pages/theme_bloc.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringProvider.of(context).about),
      ),
      body: Center(
        child: Text(
          StringProvider.of(context).about,
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: _buildFab(),
    );
  }

  Widget _buildFab() {
    return Builder(
      builder: (BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                child: Icon(Icons.update),
                onPressed: () => BlocProvider.of<ThemeBloc>(context).add(ThemeEvent.toggle),
              ),
            ),
          ],
        );
      },
    );
  }
}
