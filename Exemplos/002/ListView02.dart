import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: const <Widget>[
            Text("I'm dedicating every day to you"),
            Text('Domestic life was never quite my style'),
            Text('When you smile, you knock me out, I fall apart'),
            Text('And I thought I was so smart'),
          ],
        ));
  }
}
