import 'package:flutter/material.dart';

class ExamScheduleParent extends StatefulWidget {
  @override
  _ExamScheduleParentState createState() => _ExamScheduleParentState();
}

class _ExamScheduleParentState extends State<ExamScheduleParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam Schedule'),
      ),
    );
  }
}
