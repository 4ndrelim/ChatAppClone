import 'package:flutter/material.dart';
import '../info.dart';
import 'my_message_card.dart';
import 'sender_message_card.dart';

class ChatTexts extends StatelessWidget {
  final int userID;
  const ChatTexts({Key? key, required this.userID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NOTE THAT <messages> is hardcoded in info.dart
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
