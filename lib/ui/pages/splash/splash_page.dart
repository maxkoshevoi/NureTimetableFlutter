import 'dart:io';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nure_timetable/architecture/utils/states.dart';
import 'package:nure_timetable/ui/pages/timetable/timetable_page.dart';

import 'splash_page_bloc.dart';

class SplashPage extends StatefulWidget {
  @override
  createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashPageBloc _bloc = BlocProvider.getBloc<SplashPageBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.splashResultSubject.listen(_onSplashResult);
    _bloc.initializeApp();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  void _onSplashResult(AsyncState<InitResult> state) {
    if (mounted) {
      if (state is SuccessState<InitResult>) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => TimetablePage()),
        );
      } else if (state is FailureState) {
        exit(0);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 64,
          width: 64,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
