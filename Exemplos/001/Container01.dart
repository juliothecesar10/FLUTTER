import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial '),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  )),
            ),
          ]))),
    );
  }
}