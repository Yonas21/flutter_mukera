import 'package:flutter/material.dart';
import 'package:mukera/message.dart';

class ComposeMessage extends StatefulWidget {
  @override
  _ComposeMessageState createState() => _ComposeMessageState();
}

class _ComposeMessageState extends State<ComposeMessage> {
  String to = "";
  String subject = "";
  String body = "";

  final key = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Compose Message'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Owner',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                    validator: (value) {
                      int len = value.length;

                      if (len == 0) {
                        return 'Name Should not be Empty.';
                      } else if (len < 5) {
                        return 'Name should Contain at least ${5} characters.';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) => to = value,
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Subject',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                    validator: (value){
                      int len = value.length;

                      if (len == 0) {
                        return 'Subject Should not be Empty.';
                      } else if (len < 10) {
                        return 'Subject should Contain at least ${10} characters.';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) => subject = value,
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Body',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    maxLines: 5,
                    validator: (value) {
                      int len = value.length;

                      if (len == 0) {
                        return 'Body Should not be Empty.';
                      } else if (len < 15) {
                        return 'Body should Contain at least ${15} characters.';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) => body = value,
                  ),
                ),
                ListTile(
                  title: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'Compose New Message',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      if (this.key.currentState.validate()) {
                        //save the input field
                        this.key.currentState.save();

                        Message message = Message(subject, body);
                        Navigator.pop(context, message);
                      }
                    },
                    focusColor: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
