import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class AttendanceParent extends StatefulWidget {
  @override
  _AttendanceParentState createState() => _AttendanceParentState();
}

class _AttendanceParentState extends State<AttendanceParent> {

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
