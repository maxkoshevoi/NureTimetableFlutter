import 'package:flutter/material.dart';
import 'package:nure_timetable/i18n/strings.dart';

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
    );
  }
}
