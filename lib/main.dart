import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MyApp',
    home: Home(),
    theme: ThemeData(
        primaryColor: Colors.lightBlue, accentColor: Colors.lightBlueAccent),
  ));
}
