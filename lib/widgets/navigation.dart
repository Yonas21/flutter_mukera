import 'package:flutter/material.dart';

class TopNavigation extends StatefulWidget {
  @override
  _TopNavigationState createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation> {
  // final _selectedItem = 0;
  final List<String> leagues = ['Premier League','La Liga', 'Bundes Liga', 'Sari A', 'League 1', 'Eridivise'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      color: Colors.blueAccent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: leagues.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              setState(() {
                
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5
              ),
              child: Text(leagues[index]),
              ),
              
          );
        },
      ),
    );
  }
}