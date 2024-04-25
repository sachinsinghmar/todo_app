import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatshapp/controllers/All_Controler.dart';
import 'package:whatshapp/modals/Person_modal.dart';
import 'package:whatshapp/modals/chat_model.dart';

import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/Button_Dilogbox.dart';
import 'package:whatshapp/views/screens/ALL_home/recived_chat.dart';
import 'package:whatshapp/views/screens/ALL_home/send_chat.dart';

// ignore: must_be_immutable
class Message extends StatefulWidget {
  Contact_modal data;

  Message({
    super.key,
    required this.data,
  });

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final TextEditingController _msg = TextEditingController();
  final FocusNode _data3 = FocusNode();
  int finalvalue = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<All_Controler>(context);
    final chats = provider.chats;

    // var b = provider.walldata;

    return Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: AppBar(
            leadingWidth: 20,
            elevation: 0,
            backgroundColor: Mycolor.darkgreen,
            title: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40.sp,
                              width: 40.sp,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(widget.data.images),
                            ),
                            Appservices.givewidth(10),
                            Column(
                              children: [
                                Text(widget.data.names),
                                Text(
                                  "Online",
                                  style: Mystyle.fs16,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(CupertinoIcons.videocam_fill, size: 30),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Button_dilog_box(
                                      rbutton: "CALL",
                                      textStyle: Mystyle.fs16,
                                      text: "Start Vedio call",
                                      lbutton: "CANCLE");
                                });
                          }),
                      IconButton(
                          icon: Icon(Icons.call),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Button_dilog_box(
                                      rbutton: "CALL",
                                      textStyle: Mystyle.fs16,
                                      text: "Start voice call",
                                      lbutton: "CANCLE");
                                });
                          }),
                      //

                      PopupMenuButton(
                        elevation: 0,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text("View contact"),
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.symmetric(horizontal: 0.8),
                              child: Text(" Media,links and docs"),
                            ),
                            PopupMenuItem(
                              child: Text("Search"),
                            ),
                            PopupMenuItem(
                              child: Text("Mute notifications"),
                            ),
                            PopupMenuItem(
                              child: Text("Wallpaper"),
                            ),
                            PopupMenuItem(
                              child: Text("More"),
                            )
                          ];
                        },
                      )
                    ],
                  )
                ],
              ),
            )),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(10)
              .copyWith(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Row(
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          finalvalue = value.length;
                        });
                      },
                      controller: _msg,
                      focusNode: _data3,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        hintStyle: Mystyle.fs16.copyWith(color: Mycolor.black),
                        hintText: "Message",
                        prefixIcon: InkWell(
                            onTap: () {
                              final data = ChatModel(
                                  id: "chats_${chats.length + 1}",
                                  type: "text",
                                  content: _msg.text.trim(),
                                  time: DateTime.now(),
                                  isSendByMe: false,
                                  chatRoomId: "1");
                              provider.addChat(data);
                              _msg.clear();
                            },
                            child: Icon(Icons.emoji_emotions,
                                color: Mycolor.grey)),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.link_rounded, color: Mycolor.grey),
                            Icon(CupertinoIcons.money_euro_circle,
                                color: Mycolor.grey),
                            Icon(Icons.camera_alt_rounded, color: Mycolor.grey)
                          ],
                        ),
                      ),
                    )),
              ),
              Appservices.givewidth(10.w),
              finalvalue == 0
                  ? Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Mycolor.darkgreen,
                      ),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ))
                  : Row(
                      children: [
                        InkWell(
                          onTap: () {
                            final data = ChatModel(
                                id: "chats_${chats.length + 1}",
                                type: "text",
                                content: _msg.text.trim(),
                                time: DateTime.now(),
                                isSendByMe: false,
                                chatRoomId: "1");
                            provider.addChat(data);
                            _msg.clear();
                          },
                          child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Mycolor.darkgreen,
                              ),
                              child: Icon(
                                CupertinoIcons.arrowtriangle_left_fill,
                                color: Colors.white,
                              )),
                        ),
                        Appservices.givewidth(5.w),
                        InkWell(
                          onTap: () {
                            final data = ChatModel(
                                id: "chats_${chats.length + 1}",
                                type: "text",
                                content: _msg.text.trim(),
                                time: DateTime.now(),
                                isSendByMe: true,
                                chatRoomId: "1");
                                
                            provider.addChat(data);
                            _msg.clear();
                          },
                          child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Mycolor.darkgreen,
                              ),
                              child: Icon(
                                Icons.send,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    )
            ],
          ),
        ),
        body: Stack(
          children: [
            PageView.builder(
              itemBuilder: (context, index) => Image.asset(
                provider.chatBackground,
                fit: BoxFit.fill,
              ),
            ),
            ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, i) {
                  ChatModel chat = chats[i];
                  return chat.isSendByMe
                      ? SendChat(
                          chats: chat,
                        )
                      : RecivedChat(
                          chats: chat,
                        );
                })
          ],
        ));

    // Row(
    //   mainAxisAlignment: chat.isSendByMe
    //       ? MainAxisAlignment.end
    //       : MainAxisAlignment.start,

    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.all(4),
    //       child: Container(
    //         decoration: BoxDecoration(
    //             color: chat.isSendByMe
    //                 ? Mycolor.chatbox
    //                 : Mycolor.chatbox,
    //             borderRadius: BorderRadius.all(Radius.circular(10))),
    //         padding: EdgeInsets.all(6),
    //         child: Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Row(
    //                 children: [
    //                   Text(
    //                     chat.content,
    //                     style: TextStyle(
    //                         fontSize: 17,
    //                         fontWeight: FontWeight.w400),
    //                   ),
    //                   Appservices.givewidth(5.w),
    //                   Column(
    //                     children: [
    //                       SizedBox(
    //                         height: 6.h,
    //                       ),
    //                       Text(
    //                           "${chat.time.hour}:${chat.time.minute}Pm",
    //                           style: TextStyle(
    //                               fontSize: 12, color: Mycolor.grey)),
    //                     ],
    //                   )
    //                 ],
    //               ),

    //               //  Text("${chat.time.hour}:${chat.time.minute}Pm",
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
