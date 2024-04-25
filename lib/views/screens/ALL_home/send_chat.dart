import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:whatshapp/modals/chat_model.dart';
import 'package:whatshapp/services/app_colors.dart';

class SendChat extends StatelessWidget {
  final ChatModel chats;
  const SendChat({super.key, required this.chats});

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialOne(
      text: chats.content,
      color: Mycolor.chatbox,
      seen: true,
      tail: true,
      isSender: true,
    );
    // return Container(
    //   decoration: BoxDecoration(color: Mycolor.chatbox),
    //   padding: EdgeInsets.all(10),
    //   margin: EdgeInsets.all(5),
    //   alignment: Alignment.centerRight,
    //   child: Text(chats.content),
    // );
  }
}
