import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
    child: ListView(padding: EdgeInsets.zero, children: <Widget>[
  DrawerHeader(
    child: Row(
      children: [
        CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage('assets/images/fiker.jpg'),
        ),
        Divider(),
        SizedBox(
          height: 10.0,
          width: 20,
        ),
        Container(
          child: Text(
            'Fiker',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
          width: 20,
        ),
        Icon(
          Icons.edit,
          color: Colors.white,
        )
      ],
    ),
    decoration: BoxDecoration(color: Colors.blue),
  ),
  ListTile(
    leading: Icon(Icons.directions_run),
    title: Text('Premier League'),
    onTap: () {
      print('item1 clicked');
    },
  ),
  ListTile(
    leading: Icon(Icons.favorite),
    title: Text('La Liga'),
    onTap: () {
      print('item1 clicked');
    },
  ),
  Divider(),
  ListTile(
    leading: Icon(Icons.edit),
    title: Text('Edit Favorite'),
    onTap: () {
      print('item1 clicked');
    },
  ),
  ListTile(
    leading: Icon(Icons.settings),
    title: Text('Setting'),
    onTap: () {
      print('item1 clicked');
    },
  ),
  Divider(),
  ListTile(
    leading: Icon(Icons.contacts),
    title: Text('Contacts'),
    onTap: () {
      print('item1 clicked');
    },
  ),
  ListTile(
    leading: Icon(Icons.settings_brightness),
    title: Text('Dark Mode'),
    onTap: () {
      return new MaterialApp(
        darkTheme: ThemeData(brightness: Brightness.dark),
      );
    },
  ),
  Divider(),
]));
  }
}