import 'package:flutter/material.dart';
import 'sayfa1.dart';
import 'sayfa2.dart';
import 'sayfa3.dart';
import 'toplam.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(
        primarySwatch: Colors.amber, // Sarı renk
        scaffoldBackgroundColor: Colors.purple, // Mor arka plan
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Sayfa1(),
    Sayfa2(),
    Sayfa3(),
    Toplam(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.run_circle,
                color: Colors.amber,
              ),
              label: 'Koşu',
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.fitness_center,
                color: Colors.amber,
              ),
              label: 'Egzersiz 1',
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.directions_run,
                color: Colors.amber,
              ),
              label: 'Egzersiz 2',
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_score,
                color: Colors.amber,
              ),
              label: 'Toplam',
              backgroundColor: Colors.deepPurple),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
