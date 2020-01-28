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

import 'package:flutter_school/loginpage.dart';

class ParentsPage extends StatefulWidget {
  @override
  _ParentsPageState createState() => _ParentsPageState();
}

class _ParentsPageState extends State<ParentsPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
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
      ),
    );
  }
}
