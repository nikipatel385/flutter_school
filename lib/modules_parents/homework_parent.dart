import 'package:flutter/material.dart';

class HomeworkParent extends StatefulWidget {
  @override
  _HomeworkParentState createState() => _HomeworkParentState();
}

class _HomeworkParentState extends State<HomeworkParent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Homework/Assignment'),
        ),
      ),
    );
  }
}
