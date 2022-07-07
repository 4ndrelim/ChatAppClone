import 'package:flutter/material.dart';
import '../info.dart';
import 'my_message_card.dart';
import 'sender_message_card.dart';

class ChatList extends StatelessWidget {
  final int userID;
  const ChatList({Key? key, required this.userID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages[userID].length,
      itemBuilder: (context, index) {
        if (messages[userID][index]['isMe'] == true) {
          return MyMessageCard(
              message: messages[userID][index]['text'].toString(),
              date: messages[userID][index]['time'].toString());
        }
        //senderMessage -> card
        return SenderMessageCard(
            message: messages[userID][index]['text'].toString(),
            date: messages[userID][index]['time'].toString());
      },
    );
  }
}
