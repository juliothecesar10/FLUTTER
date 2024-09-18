import 'package:flutter/material.dart';

void main() {
  runApp(const FloatingButtonDemo());
}

class FloatingButtonDemo extends StatelessWidget {
const FloatingButtonDemo({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
          tooltip: 'Increment',
          onPressed: (){},
          child: const Icon(Icons.add, color: Colors.white, size: 28),
          ),
      )
    );
  }
}