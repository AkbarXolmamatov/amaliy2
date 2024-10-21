import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavExample(),
    );
  }
}

class BottomNavExample extends StatefulWidget {
  @override
  _BottomNavExampleState createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  // Hozirgi tanlangan index
  int _selectedIndex = 0;

  // Har bir sahifa uchun ko'rsatiladigan ekranlar
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
  ];

  // Tanlangan sahifani o'zgartirish funksiyasi
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Example'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex), // Tanlangan sahifa ko'rsatiladi
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex, // Hozirgi tanlangan element indexi
        selectedItemColor: Colors.blue, // Tanlangan element rangi
        onTap: _onItemTapped, // Tanlov o'zgarishiga funksiya
      ),
    );
  }
}