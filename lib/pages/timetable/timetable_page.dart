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
  static const int _startWeekday = DateTime.monday;
  static const int _maxDaysBefore = 365;
  static const int _daysPerPage = 7;
  static const int _lessonPerDay = 7;

  DateTime _anchor;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_controller == null) {
      _init();
    }
  }

  void _init() {
    _anchor = DateTime.now().subtract(Duration(days: _maxDaysBefore));
    while (_anchor.weekday != _startWeekday) {
      _anchor = _anchor.subtract(Duration(days: 1));
    }

    int daysBefore = DateTime.now().difference(_anchor).inDays;
    _controller = PageController(initialPage: (daysBefore / _daysPerPage).floor());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                Expanded(
                  child: _buildTimetable(_daysPerPage),
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

  Widget _buildTimetable(int daysPerPage) {
    return Row(
      children: <Widget>[
        Column(
          children: [
            _buildDate(DateTime.now()),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(_lessonPerDay, (i) => Text("$i")),
              ),
            ),
          ],
        ),
        Expanded(
          child: PageView.custom(
            controller: _controller,
            childrenDelegate: SliverChildBuilderDelegate(
              (context, i) {
                return _buildDay(
                  daysPerPage,
                  _anchor.add(Duration(days: daysPerPage * i)),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDate(DateTime date) {
    return Container(
      color: Colors.grey,
      height: 36,
      child: Text(
        _dateToString(date),
      ),
    );
  }

  Widget _buildDay(int daysPerPage, DateTime startDate) {
    return Row(
      children: List.generate(
        daysPerPage,
        (i) => _buildDayColumn(i, startDate),
      ),
    );
  }

  Widget _buildDayColumn(int index, DateTime startDate) {
    DateTime currentDate = startDate.add(Duration(days: index));
    return Expanded(
      child: Column(
        children: <Widget>[
          _buildDate(currentDate),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_lessonPerDay, (i) => Text("$i")),
            ),
          )
        ],
      ),
    );
  }

  String _dateToString(DateTime date) => "${date.year}/${date.month}/${date.day}";
}
