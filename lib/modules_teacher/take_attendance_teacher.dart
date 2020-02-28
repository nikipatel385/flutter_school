import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class TakeAttendanceTeacher extends StatefulWidget {
  @override
  _TakeAttendanceTeacherState createState() => _TakeAttendanceTeacherState();
}

class _TakeAttendanceTeacherState extends State<TakeAttendanceTeacher> {
  CalendarController _controller;

  final _minpadding = 5.0;

  var _studentClass = ['--Class--', 'Jrkg-A', 'Nursary-A'];

  var _currentItemSelected = '--Class--';

  var year = ['--Year--','2019'];
  var _currentYear = '--Year--';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

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
                    padding: EdgeInsets.only(top: _minpadding * 2,left: 20.0),
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
                          isDense: true,
                          items: _studentClass.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
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
                ],
              ),
              TableCalendar(
                calendarController: _controller,
              )
            ],
          ),
        ));
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  void _onYearSelected(String newYearSelected){
    setState(() {
      this._currentYear = newYearSelected;
    });
  }
}
