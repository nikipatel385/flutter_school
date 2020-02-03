import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules_parents/attendance_parent.dart';

import 'modules_parents/circular_parent.dart';

import 'modules_parents/exam_schedule_parent.dart';

import 'modules_parents/fees_parent.dart';

import 'modules_parents/homework_parent.dart';

import 'modules_parents/leave_application_parent.dart';

import 'modules_parents/profile_parent.dart';

import 'modules_parents/result_parent.dart';

import 'modules_parents/timetable_parent.dart';


class ParentsPage extends StatefulWidget {
  @override
  _ParentsPageState createState() => _ParentsPageState();
}

class _ParentsPageState extends State<ParentsPage> {
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
        appBar: AppBar(),
        drawer: Drawer(
          child: Container(
            color: Colors.indigo,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => ProfileParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //profile
                ListTile(
                  leading: const Icon(
                    Icons.fingerprint,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Attendance',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => AttendanceParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //attendance
                ListTile(
                  leading: const Icon(
                    Icons.attach_money,
                    color: Colors.white,
                  ),
                  title: Text(
                    'fees',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => FeesParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //fees
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Circular',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => CircularParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //circular
                ListTile(
                  leading: const Icon(
                    Icons.assignment,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Homework/Assignment',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => HomeworkParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //homework/assignment
                ListTile(
                  leading: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Leave Application',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LeaveApplicationParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //leave application
                ListTile(
                  leading: const Icon(
                    Icons.grade,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Result',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => ResultParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //result
                ListTile(
                  leading: const Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Exam Schedule',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => ExamScheduleParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //exam schedule
                ListTile(
                  leading: const Icon(
                    Icons.schedule,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Timetable',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => TimetableParent(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //timetable
                Divider(
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Close',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: GridView.count(
          padding: EdgeInsets.all(8.0),
          crossAxisCount: 3,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <Widget>[
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Profile',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => ProfileParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //profile
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.fingerprint,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Attendance',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => AttendanceParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //attendance
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.attach_money,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Fees',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => FeesParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //fees
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.calendar_today,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Circular',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => CircularParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //circular
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.assignment,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Homework/Assignment',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => HomeworkParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //Homework/Assignment
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.exit_to_app,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Leave Application',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => LeaveApplicationParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //Leave Application
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.grade,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Result',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => ResultParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //Result
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.book,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Exam Schedule',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => ExamScheduleParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //Exam Schedule
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.schedule,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Timetable',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => TimetableParent(),
                );
                Navigator.of(context).push(route);
              },
            ), //Timetable
          ],
        ),
      ),
    );
  }
}
