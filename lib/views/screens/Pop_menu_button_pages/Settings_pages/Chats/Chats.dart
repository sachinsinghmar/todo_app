import 'package:flutter/material.dart';
import 'package:whatshapp/services/ALL_List_data.dart';
import 'package:whatshapp/services/routes.dart';
import 'package:whatshapp/services/text.dart';
import 'package:whatshapp/views/components/Coustam_alert_box/Aleart_box.dart';
import 'package:whatshapp/views/components/my_listtile.dart';
import 'package:whatshapp/views/components/switcher_listtile.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Chats/Chat_backup.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Chats/Chat_history.dart';
import 'package:whatshapp/views/screens/Pop_menu_button_pages/Settings_pages/Chats/theme.dart';

import '../../../../../services/app_colors.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mycolor.darkgreen,
        foregroundColor: Colors.white,
        title: Text("Chats", style: Mystyle.fs22),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Display",
            style: Mystyle.fs16.copyWith(color: Mycolor.grey),
          ),
        ),
        MY_Listtile(
            leading: Icon(Icons.brightness_medium_sharp),
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Theme",
                style: Mystyle.fs17,
              ),
              Appservices.giveheight(7),
              Text(
                "",
                style: TextStyle(color: Mycolor.grey),
              ),
            ]),
            fun: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Alert_box(
                      name: MyList.theme,
                      button: true,
                    );
                  });
            }),
        MY_Listtile(
          leading: Icon(Icons.wallpaper),
          fun: () {
            Appservices.pushscreen(context, Chat_theme());
          },
          title: Text("Wallpaper", style: Mystyle.fs17),
        ),
        Divider(
          color: Mycolor.divider,
          thickness: 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Chat setting",
                style: Mystyle.fs17.copyWith(color: Mycolor.grey),
              ),
            ),
            Switcher_listtile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter is send", style: Mystyle.fs17),
                  Appservices.giveheight(7),
                  Text("Enter key will send your message",
                      style: Mystyle.fs14.copyWith(color: Mycolor.grey)),
                ],
              ),
            ),
            Appservices.giveheight(15),
            Switcher_listtile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Media visibility", style: Mystyle.fs17),
                  Appservices.giveheight(7),
                  Text("Show newly downloaded media in your phone’s gallery",
                      style: Mystyle.fs14.copyWith(color: Mycolor.grey)),
                ],
              ),
            ),
            MY_Listtile(
              leading: SizedBox(),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Font size", style: Mystyle.fs17),
                  Appservices.giveheight(7),
                  Text(
                    "Medium",
                    style: Mystyle.fs14.copyWith(color: Mycolor.grey),
                  )
                ],
              ),
              fun: () {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return Alert_box(
                      name: MyList.fontSize,
                      button: false,
                    );
                  },
                );
              },
            )
          ],
        ),
        Divider(
          color: Mycolor.divider,
          thickness: 2,
        ),
        MY_Listtile(
          leading: Icon(Icons.language),
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "App Language",
              style: Mystyle.fs17,
            ),
            Appservices.giveheight(7),
            Text(
              "Phone’s language (English)",
              style: Mystyle.fs14.copyWith(color: Mycolor.grey),
            )
          ]),
          fun: () {
            showDialog(
              context: context,
              builder: (context) {
                return Alert_box(name: MyList.applanguage, button: false);
              },
            );
          },
        ),
        MY_Listtile(
          leading: Icon(Icons.backup),
          title: Text(
            "Chat backup",
            style: Mystyle.fs17,
          ),
          fun: () {
            Appservices.pushscreen(context, Chat_backup());
          },
        ),
        MY_Listtile(
          leading: Icon(Icons.history),
          title: Text(
            "Chat history",
            style: Mystyle.fs17,
          ),
          fun: () {
            Appservices.pushscreen(context, Chat_history());
          },
        ),
      ]),
    );
  }
}
