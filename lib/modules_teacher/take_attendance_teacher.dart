import 'package:flutter/material.dart';

class TakeAttendanceTeacher extends StatefulWidget {
  @override
  _TakeAttendanceTeacherState createState() => _TakeAttendanceTeacherState();
}

class _TakeAttendanceTeacherState extends State<TakeAttendanceTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Attendance'),
      ),
    );
  }
}
