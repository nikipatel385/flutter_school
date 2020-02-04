import 'package:flutter/material.dart';

class TakeAttendanceTeacher extends StatefulWidget {
  @override
  _TakeAttendanceTeacherState createState() => _TakeAttendanceTeacherState();
}

class _TakeAttendanceTeacherState extends State<TakeAttendanceTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Attendance'),
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
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Center(
                    child: Text(
                  "1-A",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                )),
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: new Card(
              elevation: 5.0,
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Center(
                    child: Text(
                  "1-B",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                )),
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: new Card(
              elevation: 5.0,
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Center(
                    child: Text(
                  "1-C",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                )),
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: new Card(
              elevation: 5.0,
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Center(
                    child: Text(
                  "2-A",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                )),
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: new Card(
              elevation: 5.0,
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Center(
                    child: Text(
                  "2-B",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                )),
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: new Card(
              elevation: 5.0,
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                BoxDecoration(color: Colors.indigo,borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Center(child: Text("2-C",style: TextStyle(color: Colors.white,fontSize: 30.0),)),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
