import 'package:flutter/material.dart';

class AssignHomeworkTeacher extends StatefulWidget {
  @override
  _AssignHomeworkTeacherState createState() => _AssignHomeworkTeacherState();
}

class _AssignHomeworkTeacherState extends State<AssignHomeworkTeacher> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Homework/Assignment'),
        ),
      ),
    );
  }
}
