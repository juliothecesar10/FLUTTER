import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root
// of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Table',
	theme: ThemeData(
		primarySwatch: Colors.blue,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title:Text("GeeksforGeeks"),
		backgroundColor: Colors.green,
	),
	body: Column(
		children:<Widget>[
		Padding(
			padding: const EdgeInsets.all(8.0),
			child: Text("Table",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
		),
		Padding(
			padding: const EdgeInsets.all(8.0),
			child: Table(
			
			// textDirection: TextDirection.rtl,
			// defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
			// border:TableBorder.all(width: 2.0,color: Colors.red),
			children: [
			TableRow(
				children: [
				Text("Education",textScaleFactor: 1.5,),
				Text("Institution name",textScaleFactor: 1.5),
				Text("University",textScaleFactor: 1.5),
				]
			),
			TableRow(
				children: [
				Text("B.Tech",textScaleFactor: 1.5),
				Text("ABESEC",textScaleFactor: 1.5),
				Text("AKTU",textScaleFactor: 1.5),
				]
			),
			TableRow(
				children: [
				Text("12th",textScaleFactor: 1.5),
				Text("Delhi Public School",textScaleFactor: 1.5),
				Text("CBSE",textScaleFactor: 1.5),
				]
			),
			TableRow(
				children: [
				Text("High School",textScaleFactor: 1.5),
				Text("SFS",textScaleFactor: 1.5),
				Text("ICSE",textScaleFactor: 1.5),
				]
			),
			],
		),
		),
		]
	),
	);
}
}
