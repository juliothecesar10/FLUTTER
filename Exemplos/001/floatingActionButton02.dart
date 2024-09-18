import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Test App",
        home: Scaffold(
          appBar: AppBar(title: Text("Multiple Floating Action Buttons")),
          floatingActionButton: Wrap(
            //will break to another line on overflow
            direction: Axis.horizontal, //use vertical to show  on vertical axis
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      //action code for button 1
                    },
                    child: Icon(Icons.add),
                  )), //button first

              Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      //action code for button 2
                    },
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Icon(Icons.add),
                  )), // button second

              Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      //action code for button 3
                    },
                    backgroundColor: Colors.deepOrangeAccent,
                    child: Icon(Icons.add),
                  )), // button third

              // Add more buttons here
            ],
          ),
          body: Container(
            child: Center(
              child: Text("Multiple Floating Buttons"),
            ),
          ),
        ));
  }
}
