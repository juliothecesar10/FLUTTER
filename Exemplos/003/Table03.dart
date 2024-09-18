// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // this dummy data will be displayed in the table
  final List<Map> _users = [
    {'id': 1, 'name': 'John'},
    {'id': 2, 'name': 'Bob'},
    {'id': 3, 'name': 'Trump'},
    {'id': 4, 'name': 'Joe Biden'},
    {'id': 5, 'name': 'Superman'},
    {'id': 6, 'name': 'Wonder Lady'},
    {'id': 7, 'name': 'Ronaldo'},
    {'id': 8, 'name': 'Ben'}
  ];

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Table(
              columnWidths: const {
                0: FixedColumnWidth(50),
                1: FlexColumnWidth(),
              },
              children: _users.map((user) {
                return TableRow(children: [
                  Container(
                      color: _users.indexOf(user) % 2 == 0
                          ? Colors.blue[50]
                          : Colors.amber[50],
                      padding: const EdgeInsets.all(15),
                      child: Text(user['id'].toString())),
                  Container(
                      color: _users.indexOf(user) % 2 == 0
                          ? Colors.blue[50]
                          : Colors.amber[50],
                      padding: const EdgeInsets.all(15),
                      child: Text(user['name']))
                ]);
              }).toList(),
              border: TableBorder.all(width: 1, color: Colors.black),
            ),
          ),
        ));
  }
}