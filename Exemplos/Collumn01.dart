import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Application';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// stateless widget that the main application instantiates
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Icon(
          Icons.audiotrack,
          size: 100.0,
        ),
        Icon(
          Icons.account_balance,
          size: 100.0,
        ),
        Icon(
          Icons.airplanemode_active,
          size: 100.0,
        ),
        Icon(
          Icons.alarm,
          size: 100.0,
        ),
      ],
    );
  }
}