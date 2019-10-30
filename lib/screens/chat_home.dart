import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mukera/screens/action_button.dart';
import 'package:mukera/screens/bottom_navigation.dart';
// import 'package:http/http.dart' as http;
import 'package:mukera/screens/chat_message_detail.dart';
import 'package:mukera/screens/profile_drawer.dart';

import '../message.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var messages = const [];
  bool isLoading = true;

  Future loadMessagaList() async {
    //reading from the json files
    var content = await rootBundle.loadString('data/messages.json');
    // http.Response response = await http.get('http://www.mocky.io/v2/5db890683b00004f0b35f20d');

    // await Future.delayed(Duration(seconds: 3));

    // String content = response.body;
    List collection = json.decode(content);
    List<Message> _messages =
        collection.map((items) => Message.fromJson(items)).toList();

    setState(() {
      messages = _messages;
      isLoading = false;
    });
  }

  void initState() {
    loadMessagaList();
    super.initState();
    // isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProfileDrawer(),
      appBar: AppBar(
        title: Text('Starting New'),
      ),
      body: 
      isLoading ? Center(child: CircularProgressIndicator())
      : ListView.separated(
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          Message message = messages[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/fiker.jpg'),
            ),
            title: Text(
              message.subject
              ),
            isThreeLine: true,
            trailing: Chip(
              label: Text('1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                ),
              ),
            ),
            subtitle: Text(
              message.body,
              maxLines: 2, 
              overflow: TextOverflow.ellipsis
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MessageDetail(message.subject, message.body)
                ));
              },
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
      floatingActionButton: ActionButton(messages),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}