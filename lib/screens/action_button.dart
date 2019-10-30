import 'package:flutter/material.dart';
import 'package:mukera/message.dart';
import 'package:mukera/screens/composer_message.dart';

class ActionButton extends StatelessWidget {
  final List<Message> messages;

  ActionButton(this.messages);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () async {
        Message message = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ComposeMessage()));

        if (message != null) {
          /*
          - add to the bottom of the screen
          */
          messages.add(message);
          
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Your message has been sent.'),
            backgroundColor: Colors.blue,
          ));
        }
      },
    );
  }
}
