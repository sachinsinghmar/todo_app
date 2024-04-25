import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:whatshapp/modals/chat_model.dart';
import 'package:whatshapp/services/app_colors.dart';

class RecivedChat extends StatelessWidget {
  final ChatModel chats;

  const RecivedChat({super.key, required this.chats});

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialOne(
      text: chats.content,
      seen: true,
      color: Mycolor.chatbox,
      isSender: false,
    );
    // return Container(
    //   decoration: BoxDecoration(
    //       color: Mycolor.chatbox, borderRadius: BorderRadius.circular(10)),
    //   padding: EdgeInsets.all(10),
    //   margin: EdgeInsets.all(5),
    //   alignment: Alignment.centerLeft,
    //   child: Text(chats.content),
    // );
  }
}
