import 'package:flutter/material.dart';

class TimetableParent extends StatefulWidget {
  @override
  _TimetableParentState createState() => _TimetableParentState();
}

class _TimetableParentState extends State<TimetableParent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('TimeTable'),
        ),
      ),
    );
  }
}
