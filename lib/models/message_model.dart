import 'package:mukera/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User currentUser = User(id: 0, name: 'Current User', imageUrl: 'assets/images/0.jpg');

final User yonas = User(id: 1, name: 'yonas', imageUrl: 'assets/images/9.jpg');

final User john = User(id: 2, name: 'john', imageUrl: 'assets/images/17.jpg');

final User music = User(id: 3, name: 'music', imageUrl: 'assets/images/66.jpg');

final User heart = User(id: 4, name: 'heart', imageUrl: 'assets/images/83.jpg');

final User misge = User(id: 1, name: 'misge', imageUrl: 'assets/images/57.jpg');

List<User> favorites = [currentUser, yonas, john, music, heart, misge];

//recent messages
List<Message> recentMessages = [
  Message(
      sender: yonas,
      time: '05:30',
      text: 'how are you bud?',
      isLiked: false,
      unread: true),
  Message(
      sender: john,
      time: '02:30',
      text: 'sima man assignment serah ?',
      isLiked: false,
      unread: true),
  Message(
      sender: music,
      time: '06:30',
      text: 'beselam gebash man ?',
      isLiked: true,
      unread: false),
  Message(
      sender: heart,
      time: '07:30',
      text: 'hello sunshine',
      isLiked: true,
      unread: false),

      Message(
      sender: misge,
      time: '07:30',
      text: 'hello sunshine',
      isLiked: true,
      unread: false)
];
