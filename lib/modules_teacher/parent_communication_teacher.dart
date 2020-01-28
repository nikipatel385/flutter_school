import 'package:flutter/material.dart';

class ParentCommunicationTeacher extends StatefulWidget {
  @override
  _ParentCommunicationTeacherState createState() =>
      _ParentCommunicationTeacherState();
}

class _ParentCommunicationTeacherState
    extends State<ParentCommunicationTeacher> {
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
          title: Text('Parent Communication'),
        ),
      ),
    );
  }
}
