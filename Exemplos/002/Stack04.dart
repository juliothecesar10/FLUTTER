import 'package:flutter/material.dart';

// Material design library
void main() {
  runApp(
    // widget tree starts here
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Positioned'),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
        ), //AppBar
        body: Padding(
          padding: EdgeInsets.only(top: 300),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              /** Positioned WIdget **/
              Positioned(
                top: 0.0,
                child: Icon(Icons.message,
                    size: 128.0, color: Colors.greenAccent[400]), //Icon
              ), //Positioned
              /** Positioned WIdget **/

              Positioned(
                top: 0,
                right: 285,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Text('24'),
                ), //CircularAvatar
              ), //Positioned
            ], //<Widget>[]
          ), //Stack
        ), //Padding
      ), //Scaffold
    ), //MaterialApp
  );
}
