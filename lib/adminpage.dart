import 'package:flutter/material.dart';

import 'modules_admin/profile_admin.dart';

class AdminPage extends StatefulWidget {
  final String img,
      suf,
      fn,
      mn,
      ln,
      eml,
      mob,
      gen,
      dob,
      add,
      city,
      state,
      pin,
      doj;

  AdminPage(
      {this.img,
      this.suf,
      this.fn,
      this.mn,
      this.ln,
      this.eml,
      this.mob,
      this.gen,
      this.dob,
      this.add,
      this.city,
      this.state,
      this.pin,
      this.doj});

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
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
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => ProfileAdmin(
                          imgs: widget.img,
                          sufs: widget.suf,
                          fns: widget.fn,
                          mns: widget.mn,
                          lns: widget.ln,
                          emls: widget.eml,
                          mobs: widget.mob,
                          gens: widget.gen,
                          dobs: widget.dob,
                          adds: widget.add,
                          citys: widget.city,
                          states: widget.state,
                          pins: widget.pin,
                          dojs: widget.doj),
                    );
                    Navigator.of(context).push(route);
                  },
                ), //profile
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
                elevation: 5.0,
                child: ListView(
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
                  builder: (BuildContext context) => ProfileAdmin(
                      imgs: widget.img,
                      sufs: widget.suf,
                      fns: widget.fn,
                      mns: widget.mn,
                      lns: widget.ln,
                      emls: widget.eml,
                      mobs: widget.mob,
                      gens: widget.gen,
                      dobs: widget.dob,
                      adds: widget.add,
                      citys: widget.city,
                      states: widget.state,
                      pins: widget.pin,
                      dojs: widget.doj),
                );
                Navigator.of(context).push(route);
              },
            ), //profile
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: new Card(
                elevation: 5.0,
                child: ListView(
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
