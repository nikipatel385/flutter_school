import 'package:flutter/material.dart';

class FeesParent extends StatefulWidget {
  @override
  _FeesParentState createState() => _FeesParentState();
}

class _FeesParentState extends State<FeesParent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Fees'),
        ),
      ),
    );
  }
}
