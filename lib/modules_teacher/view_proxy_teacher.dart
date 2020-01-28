import 'package:flutter/material.dart';

class ViewProxyTeacher extends StatefulWidget {
  @override
  _ViewProxyTeacherState createState() => _ViewProxyTeacherState();
}

class _ViewProxyTeacherState extends State<ViewProxyTeacher> {
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
          title: Text('View Proxy'),
        ),
      ),
    );
  }
}
