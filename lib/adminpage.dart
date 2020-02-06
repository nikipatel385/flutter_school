import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
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
                title: Text('Setting'),
                trailing: const Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
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
                  children: <Widget>[],
                ),
              ),
              onTap: () {},
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
                  children: <Widget>[

                  ],
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
