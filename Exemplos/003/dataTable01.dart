import 'package:flutter/material.dart';
void main() => runApp(MyApp());
/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}
/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Designation',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Mohit')),
            DataCell(Text('23')),
            DataCell(Text('Associate Software Developer')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Akshay')),
            DataCell(Text('25')),
            DataCell(Text('Software Developer')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Deepak')),
            DataCell(Text('29')),
            DataCell(Text('Team Lead ')),
          ],
        ),
      ],
    );
  }
}