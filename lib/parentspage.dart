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
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Niki Patel'),
                accountEmail: Text('nikipatel385@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'N',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => ProfileParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //profile
              ListTile(
                leading: const Icon(Icons.fingerprint),
                title: Text('Attendance'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => AttendanceParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //attendance
              ListTile(
                leading: const Icon(Icons.attach_money),
                title: Text('fees'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => FeesParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //fees
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: Text('Circular'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => CircularParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //circular
              ListTile(
                leading: const Icon(Icons.assignment),
                title: Text('Homework/Assignment'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => HomeworkParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //homework/assignment
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: Text('Leave Application'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => LeaveApplicationParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //leave application
              ListTile(
                leading: const Icon(Icons.grade),
                title: Text('Result'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => ResultParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //result
              ListTile(
                leading: const Icon(Icons.book),
                title: Text('Exam Schedule'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => ExamScheduleParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //exam schedule
              ListTile(
                leading: const Icon(Icons.schedule),
                title: Text('Timetable'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => TimetableParent(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //timetable
            ],
          ),
        ),
      ),
    );
  }
}
