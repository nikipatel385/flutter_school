import 'package:flutter/material.dart';

class ParentCommunicationTeacher extends StatefulWidget {
  @override
  _ParentCommunicationTeacherState createState() =>
      _ParentCommunicationTeacherState();
}

class _ParentCommunicationTeacherState
    extends State<ParentCommunicationTeacher> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Parent Communication'),
        ),
      ),
    );
  }
}
