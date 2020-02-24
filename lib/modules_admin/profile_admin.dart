import 'package:flutter/material.dart';

class ProfileAdmin extends StatefulWidget {
  final String imgs,
      sufs,
      fns,
      mns,
      lns,
      emls,
      mobs,
      gens,
      dobs,
      adds,
      citys,
      states,
      pins,
      dojs;

  ProfileAdmin(
      {this.imgs,
      this.sufs,
      this.fns,
      this.mns,
      this.lns,
      this.emls,
      this.mobs,
      this.gens,
      this.dobs,
      this.adds,
      this.citys,
      this.states,
      this.pins,
      this.dojs});

  @override
  _ProfileAdminState createState() => _ProfileAdminState();
}

class _ProfileAdminState extends State<ProfileAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('profile'),
        ),
        body: ListView(
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
                        child: Image.network(
                          'http://202.47.117.124/storage/user/' + widget.imgs,
                          cacheHeight: 190,
                          cacheWidth: 220,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 95.0),
                        child: Text(
                          widget.sufs,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          widget.fns,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          widget.mns,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          widget.lns,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0),
                        )),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 30.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'EMAIL_ID: ',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.emls,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'MOBILE: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.mobs,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'GENDER: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.gens,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'DATE OF BIRTH: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.dobs,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'ADDRESS: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.adds,
                        style: TextStyle(fontSize: 20.0),
                      )))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'CITY: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.citys,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'STATE: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.states,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'PINCODE: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.pins,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ])),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(children: <Widget>[
                  Text(
                    'JOIN YEAR: ',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        widget.dojs,
                        style: TextStyle(fontSize: 20.0),
                      ))
                ]))
          ],
        ));
  }
}
