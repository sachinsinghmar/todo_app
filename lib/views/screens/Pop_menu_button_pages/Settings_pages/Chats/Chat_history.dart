import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/app_colors.dart';

import 'package:whatshapp/services/text.dart';

import 'package:whatshapp/views/components/Button_Dilogbox.dart';
import 'package:whatshapp/views/components/my_listtile.dart';

class Chat_history extends StatefulWidget {
  const Chat_history({super.key});

  @override
  State<Chat_history> createState() => _Chat_historyState();
}

class _Chat_historyState extends State<Chat_history> {
  bool ischange = false;
  bool ischange2 = false;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> fields = [
      {
        "name": "Export chat",
        "icon": Icon(Icons.download_rounded, color: Mycolor.grey),
        "id": "01"
      },
      {
        "name": "Archive all chats",
        "icon": Icon(Icons.archive, color: Mycolor.grey),
        "id": "02"
      },
      {
        "name": "Clear all chats",
        "icon": Icon(Icons.remove_circle_outline, color: Mycolor.grey),
        "id": "03"
      },
      {
        "name": "Delete all chats",
        "icon": Icon(
          Icons.delete,
          color: Mycolor.grey,
        ),
        "id": "04"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mycolor.darkgreen,
        foregroundColor: Colors.white,
        title: Text("Chat history", style: Mystyle.fs22),
      ),
      body: Column(children: [
        ...List.generate(
            fields.length,
            (index) => MY_Listtile(
                leading: fields[index]["icon"],
                title: Text(fields[index]["name"], style: Mystyle.fs16),
                fun: () {
                  chathistory(fields[index]["id"], context);
                }))
      ]),
    );
  }

  chathistory(String names, context) {
    switch (names) {
      case "02":
        showDialog(
          context: context,
          builder: (context) {
            return Button_dilog_box(
              lbutton: "Cancle",
              rbutton: "Ok",
              textStyle: Mystyle.fs16,
              text: "Are you sure want to archive ALL chats?",
            );
          },
        );
      case "03":
        showDialog(
          context: context,
          builder: (context) {
            return Button_dilog_box(
                text: "Clear Messages in Chats",
                lbutton: "Cancle",
                checker: true,
                name: MyList.delet_chat,
                stylesubtitle: Mystyle.fs15.copyWith(color: Mycolor.grey),
                subtitle: "Messages in all chats will disappear forever.",
                rbutton: "Clear Message");
          },
        );
      case "04":
        return showDialog(
          context: context,
          builder: (context) {
            return Button_dilog_box(
                text:
                    "Are you sure you want to delete ALL chats and their messages?",
                textStyle: Mystyle.fs16,
                lbutton: "Cancle",
                name: [
                  {"name": "Delete media in chats", "value": false},
                ],
                checker: true,
                rbutton: "Delete");
          },
        );
    }
  }
}
