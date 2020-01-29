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
                    'profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => ProfileTeacher(),
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
                    'Take Attendance',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) =>
                          TakeAttendanceTeacher(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //attendance
                ListTile(
                  leading: const Icon(
                    Icons.assignment,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Assign Homework/Assignment',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) =>
                          AssignHomeworkTeacher(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //homework/assignment
                ListTile(
                  leading: const Icon(
                    Icons.people_outline,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Parent Communication',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ParentCommunicationTeacher(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //parent communication
                ListTile(
                  leading: const Icon(
                    Icons.schedule,
                    color: Colors.white,
                  ),
                  title: Text(
                    'My Timetable',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => MyTimetableTeacher(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //my timetable
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  title: Text(
                    'View Proxy',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => ViewProxyTeacher(),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //view proxy
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
                    }),
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
                elevation: 3.0,
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
                  builder: (BuildContext context) => ProfileTeacher(),
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
                      'Take Attendance',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => TakeAttendanceTeacher(),
                );
                Navigator.of(context).push(route);
              },
            ), //Take Attendance
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
                  builder: (BuildContext context) => AssignHomeworkTeacher(),
                );
                Navigator.of(context).push(route);
              },
            ), //Assign Homework/Assignment
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.people_outline,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'Parent Communication',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) =>
                      ParentCommunicationTeacher(),
                );
                Navigator.of(context).push(route);
              },
            ), //Parent Communication
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      size: 80.0,
                      color: Colors.indigo,
                    ),
                    Center(
                        child: Text(
                      'My Timetable',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => MyTimetableTeacher(),
                );
                Navigator.of(context).push(route);
              },
            ), //My Timetable
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
                      'View Proxy',
                      style: TextStyle(color: Colors.indigo),
                    )),
                  ],
                ),
              ),
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => ViewProxyTeacher(),
                );
                Navigator.of(context).push(route);
              },
            ), //View Proxy
          ],
        ),
      ),
    );
  }
}
