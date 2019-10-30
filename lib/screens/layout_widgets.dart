import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  static var titleText;

  static var subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Hello From Flutter',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 15.0, color: Colors.black87),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('assets/images/45.jpg')),
                Expanded(flex: 2, child: Image.asset('assets/images/50.jpg')),
                Expanded(child: Image.asset('assets/images/67.jpg'))
              ],
            ),
            Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Rate the App: ', style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0
                    ),),
                    SizedBox(width: 20,),
                    Icon(Icons.star, color: Colors.red[500]),
                    Icon(Icons.star, color: Colors.purple[500]),
                    Icon(Icons.star, color: Colors.lime[500]),
                    Icon(Icons.star, color: Colors.yellow[350]),
                    Icon(Icons.star, color: Colors.green[900]),
                  ],
                )
          ],
        ),
      ),
    );
  }
}
