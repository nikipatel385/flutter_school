import 'package:flutter/material.dart';

class AttendanceParent extends StatefulWidget {
  @override
  _AttendanceParentState createState() => _AttendanceParentState();
}

class _AttendanceParentState extends State<AttendanceParent> {
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Do you really want to exit the app'),
              actions: <Widget>[
                FlatButton(
                  child: Text('No'),
                  onPressed: () => Navigator.pop(context, false),
                ),
                FlatButton(
                  child: Text('Yes'),
                  onPressed: () => Navigator.pop(context, true),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Check Attendance'),
        ),
      ),
    );
  }
}
