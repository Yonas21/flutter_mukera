import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('News'), icon: Icon(Icons.new_releases)),
          BottomNavigationBarItem(
              title: Text('Tables'), icon: Icon(Icons.table_chart)),
        ],
      
    );
  }
}