import 'package:flutter/material.dart';    
void main() => runApp(MyApp());    
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Flutter GestureDetector', theme: ThemeData(  
      primarySwatch: Colors.green,),  
      home: HomePage(),  
    );  
  }  
}  
class HomePage extends StatefulWidget {  
  @override  
  HomePageState createState() => new HomePageState();  
}    
class HomePageState extends State<HomePage> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Gestures Exemplo'),  
        centerTitle: true,  
      ),  
      body: Center(child: GestureDetector(  
          onTap: () {  
            print('A caixa foi Clicada');  
          },  
          child: Container(  
            height: 60.0,  
            width: 120.0,  
            padding: EdgeInsets.all(10.0),  
            decoration: BoxDecoration(  
              color: Colors.cyan,  
              borderRadius: BorderRadius.circular(15.0),  
            ),  
            child: Center(child: Text('Clique Aqui')),
          )  
      )),  
    );  
  }  
}