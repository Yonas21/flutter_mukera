
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mukera/screens/chat_home.dart';
 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Practice',
        theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.red),
        home: HomePage());
  }
}


