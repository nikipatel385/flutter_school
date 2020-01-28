import 'package:flutter/material.dart';

import 'modules_teacher/profile_teacher.dart';

import 'modules_teacher/take_attendance_teacher.dart';

import 'modules_teacher/view_proxy_teacher.dart';

import 'modules_teacher/parent_communication_teacher.dart';

import 'modules_teacher/my_timetable_teacher.dart';

import 'modules_teacher/assign_homework_teacher.dart';

import 'package:flutter_school/loginpage.dart';

class TeacherPage extends StatefulWidget {
  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
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
                title: Text('profile'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => ProfileTeacher(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //profile
              ListTile(
                leading: const Icon(Icons.fingerprint),
                title: Text('Take Attendance'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => TakeAttendanceTeacher(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //attendance
              ListTile(
                leading: const Icon(Icons.assignment),
                title: Text('Assign Homework/Assignment'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => AssignHomeworkTeacher(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //homework/assignment
              ListTile(
                leading: const Icon(Icons.people),
                title: Text('Parent Communication'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ParentCommunicationTeacher(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //parent communication
              ListTile(
                leading: const Icon(Icons.schedule),
                title: Text('My Timetable'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => MyTimetableTeacher(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //my timetable
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: Text('View Proxy'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => ViewProxyTeacher(),
                  );
                  Navigator.of(context).push(route);
                },
              ), //view proxy
            ],
          ),
        ),
      ),
    );
  }
}
