import 'package:flutter/material.dart';
import 'package:mukera/widgets/category_selector.dart';
import 'package:mukera/widgets/favorite_contacts.dart';
import 'package:mukera/widgets/recent_messages.dart';
class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text('Chats',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentMessages()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
