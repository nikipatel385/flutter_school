import 'package:flutter/material.dart';

class ResultParent extends StatefulWidget {
  @override
  _ResultParentState createState() => _ResultParentState();
}

class _ResultParentState extends State<ResultParent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
      ),
    );
  }
}
