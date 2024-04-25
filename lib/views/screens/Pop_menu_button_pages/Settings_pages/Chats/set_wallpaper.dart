import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatshapp/controllers/All_Controler.dart';

import 'package:whatshapp/modals/wallpaper_modal.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/views/screens/ALL_home/Person_chat.dart';

// ignore: must_be_immutable
class Set_wallpaper extends StatefulWidget {
  String image;

  Set_wallpaper({
    super.key,
    required this.image,
  });

  @override
  State<Set_wallpaper> createState() => _Set_wallpaperState();
}

class _Set_wallpaperState extends State<Set_wallpaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Light Theme wallpaper"),
      ),
      body: Stack(alignment: Alignment.topCenter, children: [
        Image.asset(
          widget.image,
          fit: BoxFit.cover,
          height: Appservices.getscreenheight(context),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("Today", style: TextStyle(color: Mycolor.grey)),
              ),
              Appservices.giveheight(10),
              BubbleSpecialOne(
                text: "Swipe left to preview more wallpapers",
                seen: true,
                color: Colors.white,
                isSender: false,
              ),
              Appservices.giveheight(20),
              BubbleSpecialOne(
                text: "Set wallpaper for light theme",
                seen: true,
                color: Mycolor.chatbox,
                isSender: true,
              ),
              Spacer(),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 20)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    final provider =
                        Provider.of<All_Controler>(context, listen: false);
                    provider.setChatBackground(widget.image);
                  },
                  child: Text(
                    "Set wallpaper",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
