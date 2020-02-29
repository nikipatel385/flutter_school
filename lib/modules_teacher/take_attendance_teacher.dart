import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:calendarro/calendarro.dart';

import 'package:http/http.dart' as http;

import 'package:table_calendar/table_calendar.dart';

import 'student_list.dart';

class TakeAttendanceTeacher extends StatefulWidget {
  final List syearList;

  TakeAttendanceTeacher({this.syearList});

  @override
  _TakeAttendanceTeacherState createState() => _TakeAttendanceTeacherState();
}

class _TakeAttendanceTeacherState extends State<TakeAttendanceTeacher> {
  List data = List();

  // ignore: missing_return
  Future<String> fetchStudentAttendance() async {
    var studentAttendance = await http.get(
        Uri.encodeFull(
            'http://202.47.117.124/student/student_attendance?type=API&user_id=48&sub_institute_id=46&syear=2019'),
        headers: {"Accept": "application/json"});

    setState(() {
      var dataToJson = json.decode(studentAttendance.body);

      data = dataToJson['standardDivision'];
      print(data);
      print(widget.syearList);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //   _controller = CalendarController();
    this.fetchStudentAttendance();
  }

  // CalendarController _controller;

  final _minpadding = 5.0;

  var _studentClass = ['--Class--', 'Jrkg-A', 'Nursary-A'];

  String _currentItemSelected;

  var year = ['--Year--', '2019'];
  var _currentYear = '--Year--';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Take Attendance'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: _minpadding * 2, left: 20.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border:
                            Border.all(style: BorderStyle.solid, width: 0.80),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isDense: true,
                          items: year.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.indigo, fontSize: 20.0),
                              ),
                            );
                          }).toList(),
                          value: _currentYear,
                          onChanged: (String newYearSelected) {
                            _onYearSelected(newYearSelected);
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _minpadding * 2, left: 30.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border:
                            Border.all(style: BorderStyle.solid, width: 0.80),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            '--Class--',
                            style:
                                TextStyle(color: Colors.indigo, fontSize: 20.0),
                          ),
                          isDense: true,
                          items: data.map((item) {
                            return DropdownMenuItem<String>(
                              value: item['standard_name'],
                              child: Text(
                                item['standard_name'] +
                                    '-' +
                                    item['division_name'],
                                style: TextStyle(
                                    color: Colors.indigo, fontSize: 20.0),
                              ),
                            );
                          }).toList(),
                          value: _currentItemSelected,
                          onChanged: (String newValueSelected) {
                            _onDropDownItemSelected(newValueSelected);
                          },
                        ),
                      ),
                    ),
                  ),
//                  Calendarro(
//                    onTap: (date){
//                      var route = MaterialPageRoute(
//                        builder: (BuildContext
//                        context) =>
//                            StudentList(),
//                      );
//                      Navigator.of(context)
//                          .push(route);
//                    }
//                  )
                ],
              ),
            ],
          ),
        ));
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  void _onYearSelected(String newYearSelected) {
    setState(() {
      this._currentYear = newYearSelected;
    });
  }
}
