import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nure_timetable/res/app_colors.dart';
import 'package:nure_timetable/res/strings.dart';

class ErrorView extends StatelessWidget {
  final error;
  final VoidCallback onReload;
  final EdgeInsets margin;

  const ErrorView(
    this.error, {
    @required this.onReload,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    String message;
    if (error is SocketException) {
      message = Strings.current().textNoInternet;
    } else {
      message = Strings.current().error;
    }
    return Center(
      child: Container(
        margin: margin,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                '$message',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Rubik',
                  color: AppColors.current().red,
                ),
              ),
            ),
            RaisedButton(
              child: Text('Try again'),
              onPressed: onReload,
            ),
          ],
        ),
      ),
    );
  }
}
