import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
         home: Home()
      );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> countries = ["Brazil", "Nepal", "India", "China", "USA", "Canada"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
            title: Text("Horizonatl ListView"),
            backgroundColor: Colors.redAccent,
         ),

         body: Container(
                padding: EdgeInsets.all(20),
                child: Column( 
                  children: [

                      Container(
                        height: 100,
                        child:ListView(
                          scrollDirection: Axis.horizontal,
                          children: countries.map((country){
                               return box(country, Colors.deepPurpleAccent);
                          }).toList(),
                        )
                      ),

                      Container(
                        height: 100,
                        child:SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:Row(
                            children: countries.map((country){
                                return box(country, Colors.deepOrangeAccent);
                            }).toList(),
                          )
                        )
                      )
   
                  ],
                ) 
            )   
          
    );
  } 

  Widget box(String title, Color backgroundcolor){
     return Container(
        margin: EdgeInsets.all(10),
        width: 80,
        color: backgroundcolor,
        alignment: Alignment.center,
        child: Text(title, style:TextStyle(
                     color: Colors.white,
                     fontSize: 20))
     );
  }
}