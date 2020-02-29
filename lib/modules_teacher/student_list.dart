import 'package:flutter/material.dart';

class StudentList extends StatefulWidget {
  final List studlist;

  StudentList({this.studlist});

  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students List'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: widget.studlist == null ? 0 : widget.studlist.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                child: Center(
                  child: Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          widget.studlist[index]['first_name'] +
                              ' ' +
                              widget.studlist[index]['father_name'] ,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Id: ' + widget.studlist[index]['id'].toString(),
                          style: TextStyle(fontSize: 16.0),
                        ),
                        trailing: Checkbox(
                          value: checkBoxValue,
                          activeColor: Colors.green,
                        ),
                      )
//                      Container(
//                        child: Text(
//                          widget.studlist[index]['first_name'] +
//                              ' ' +
//                              widget.studlist[index]['father_name'] +
//                              ' ' +
//                              widget.studlist[index]['last_name'],
//                          style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
//                        ),
//                        padding: const EdgeInsets.all(15.0),
//                      ),
//                      Container(
//                        child: Text(
//                          'Id: '+widget.studlist[index]['id'].toString(),
//                          style: TextStyle(fontSize: 16.0),
//                        ),
//                        padding: const EdgeInsets.all(15.0),
//                      ),
                    ],
                  )),
                ),
              );
            }),
      ),
    );
  }
}
