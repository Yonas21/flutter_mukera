import 'package:flutter/material.dart';
import 'package:mukera/models/message_model.dart';
// import 'package:english_words/english_words.dart';

class RecentMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 4.0, bottom: 4.0, right: 12.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: ListView.builder(
          itemCount: recentMessages.length,
          padding: new EdgeInsets.symmetric(horizontal: 8),
          itemBuilder: (BuildContext context, int index) {
            final Message chat = recentMessages[index];
            return Container(
              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                  color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chat.sender.name.toLowerCase(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text(chat.text,
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700),
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ]),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        chat.time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      chat.unread ? Container(
                        width: 35.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ): SizedBox.shrink(),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
