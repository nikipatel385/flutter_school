import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class TakeAttendanceTeacher extends StatefulWidget {
  @override
  _TakeAttendanceTeacherState createState() => _TakeAttendanceTeacherState();
}

class _TakeAttendanceTeacherState extends State<TakeAttendanceTeacher> {

  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Check Attendance'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TableCalendar(calendarController: _controller,)
            ],
          ),
        )
    );
  }
}
