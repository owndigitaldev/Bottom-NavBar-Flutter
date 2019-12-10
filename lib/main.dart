import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Navigation Basics",
    home: BottomNavPage(),
  ));
}

class BottomNavPage extends StatefulWidget {
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int idx) {
    setState(() {
      _selectedTabIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      Text("Halaman Home"),
     Hal2(),
      Text("Halaman Profile"),
    ];
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite), title: Text('Favorite')),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
    ];
    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: false,
      onTap: _onNavBarTapped,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}

class Hal2 extends StatefulWidget {
  @override
  _Hal2State createState() => _Hal2State();
}

class _Hal2State extends State<Hal2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
    );
  }
}

