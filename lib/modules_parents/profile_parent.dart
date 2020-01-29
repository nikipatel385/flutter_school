import 'package:flutter/material.dart';

class ProfileParent extends StatefulWidget {
  @override
  _ProfileParentState createState() => _ProfileParentState();
}

class _ProfileParentState extends State<ProfileParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Center(
                child: Builder(
              builder: (context) => SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 15,
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Center(
                            child: Icon(
                          Icons.person,
                          color: Colors.indigo,
                          size: 130,
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
