import 'package:flutter/material.dart';

class LeaveApplicationParent extends StatefulWidget {
  @override
  _LeaveApplicationParentState createState() => _LeaveApplicationParentState();
}

class _LeaveApplicationParentState extends State<LeaveApplicationParent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Leave Application'),
        ),
      ),
    );
  }
}
