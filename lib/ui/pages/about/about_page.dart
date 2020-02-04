import 'package:flutter/material.dart';
import 'package:nure_timetable/res/strings.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.current().about),
      ),
      body: Center(
        child: Text(
          Strings.current().about,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
