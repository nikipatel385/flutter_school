import 'package:flutter/material.dart';

class ExamScheduleParent extends StatefulWidget {
  @override
  _ExamScheduleParentState createState() => _ExamScheduleParentState();
}

class _ExamScheduleParentState extends State<ExamScheduleParent> {
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
          title: Text('Exam Schedule'),
        ),
      ),
    );
  }
}
