import 'package:flutter/material.dart';

class AttendanceParent extends StatefulWidget {
  @override
  _AttendanceParentState createState() => _AttendanceParentState();
}

class _AttendanceParentState extends State<AttendanceParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Attendance'),
      ),
    );
  }
}
