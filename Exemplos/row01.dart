import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - googleflutter.com'),
      ),
      body: Row(
        children: <Widget>[
          Icon(
            Icons.access_alarm,
            size: 80,
          ),
          Icon(
            Icons.account_circle,
            size: 80,
          ),
          Icon(
            Icons.save,
            size: 80,
          ),
        ],
      ),
    );
  }
}