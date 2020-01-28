import 'package:flutter/material.dart';

class ViewProxyTeacher extends StatefulWidget {
  @override
  _ViewProxyTeacherState createState() => _ViewProxyTeacherState();
}

class _ViewProxyTeacherState extends State<ViewProxyTeacher> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('View Proxy'),
        ),
      ),
    );
  }
}
