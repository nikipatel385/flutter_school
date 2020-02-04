import 'package:flutter/material.dart';

class LeaveApplicationParent extends StatefulWidget {
  @override
  _LeaveApplicationParentState createState() => _LeaveApplicationParentState();
}

class _LeaveApplicationParentState extends State<LeaveApplicationParent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController startdateController = TextEditingController();
  TextEditingController enddateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leave Application'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        hintText: 'Topic'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter topic';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    controller: startdateController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        hintText: 'From: dd/mm/yyyy'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter date';
                      }
                      return null;
                    },
                    onTap: () async {
                      DateTime date = DateTime(1950);
                      FocusScope.of(context).requestFocus(FocusNode());

                      date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2030));
                      var formattedDate =
                          "${date.day}-${date.month}-${date.year}";
                      startdateController.text = formattedDate;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        hintText: 'To: dd/mm/yyyy'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter date';
                      }
                      return null;
                    },
                    onTap: () async {
                      DateTime date = DateTime(1950);
                      FocusScope.of(context).requestFocus(FocusNode());

                      date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2030));
                      var formattedDate =
                          "${date.day}-${date.month}-${date.year}";
                      enddateController.text = formattedDate;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        hintText: 'Reason'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  height: 50.0,
                  minWidth: 380.0,
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  child: new Text(
                    "Submit",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () => {
                    if (_formKey.currentState.validate())
                      {print('valid application')}
                  },
                  splashColor: Colors.redAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
