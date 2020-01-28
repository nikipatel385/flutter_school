import 'package:flutter/material.dart';

class ProfileParent extends StatefulWidget {
  @override
  _ProfileParentState createState() => _ProfileParentState();
}

class _ProfileParentState extends State<ProfileParent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
      ),
    );
  }
}
