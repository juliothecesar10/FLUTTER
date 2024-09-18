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
          Expanded(
            child: Icon(
              Icons.access_alarm,
              size: 80,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.account_circle,
              size: 80,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.save,
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}