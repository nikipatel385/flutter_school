import 'package:flutter/material.dart';

class CircularParent extends StatefulWidget {
  @override
  _CircularParentState createState() => _CircularParentState();
}

class _CircularParentState extends State<CircularParent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Circular'),
        ),
      ),
    );
  }
}
