import 'package:flutter/material.dart';
import 'new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  //_MyAppState createState() => _MyAppState();
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    NewPageScreen("Minha conta"),
    NewPageScreen("Meus pedidos"),
    NewPageScreen("Favoritos")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), 
			  label: "Minha conta"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), 
			  label: "Meus pedidos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), 
			  label: "Favoritos"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
