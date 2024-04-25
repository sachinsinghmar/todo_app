import 'package:flutter/material.dart';
import 'package:whatshapp/services/app_colors.dart';
import 'package:whatshapp/services/images.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/App_buttons.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Chats/chat_wallpaper.dart';

class Chat_theme extends StatelessWidget {
  const Chat_theme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mycolor.darkgreen,
        foregroundColor: Colors.white,
        title: Text("Chats", style: Mystyle.fs22),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Appservices.giveheight(20),
            Image.asset(Myimage.chat_theme),
            Appservices.giveheight(20),
            MYSmallbtn(
              navigator: () {
                Appservices.pushscreen(context, Chat_Wallpaper());
              },
              text: "CHANGE",
              width: 100,
              textStyle: Mystyle.fs16.copyWith(color: Mycolor.darkgreen),
            ),
            Appservices.giveheight(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                  "To change your wallpaper for dark theme, turn on dark theme from settings >Chats> Theme.",
                  style: Mystyle.fs16.copyWith(color: Mycolor.grey)),
            )
          ],
        ),
      ),
    );
  }
}
