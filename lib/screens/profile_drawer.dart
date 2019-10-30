import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      UserAccountsDrawerHeader(
        accountEmail: Text(
          'fikeryegizachew@gmail.com',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        accountName: Text(
          'Fiker',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage('assets/images/fiker.jpg'),
        ),
        otherAccountsPictures: <Widget>[
          GestureDetector(
            child: CircleAvatar(
              child: Icon(Icons.add),
            ),
            onTap: (){
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text('add New user.'),
                  );
                }
              );
            },
          )
        ],
      ),
      ListTile(
        leading: Icon(Icons.directions_run),
        title: Text('Premier League'),
        onTap: () {
          print('item1 clicked');
        },
      ),
      ListTile(
        leading: Icon(Icons.live_tv),
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
        leading: Icon(Icons.contacts),
        title: Text('Contacts'),
        onTap: () {
          print('item1 clicked');
        },
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings_brightness),
        title: Text('Dark Mode'),
        onTap: () {
          return new MaterialApp(
            darkTheme: ThemeData(brightness: Brightness.dark),
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Setting'),
        onTap: () {
          print('item1 clicked');
        },
      ),
    ]));
  }
}
