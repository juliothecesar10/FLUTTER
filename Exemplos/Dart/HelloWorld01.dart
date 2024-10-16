import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
	return MaterialApp(
	   home: Container(
	       color: Colors.black,
	       alignment: Alignment.center,
	       child: Text('ola Mundo')		
	    ),
	);
  }
}
